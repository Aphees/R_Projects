CC <- function(data,iter)
{
  a <- CreateAgreement(data);
  beta = ncol(data) / 2;
  #n <- nrow(data);
  #print(beta);
  #stop();
  cluster <- 1:nrow(data);
  #print(c);
  f = CCFit(cluster,a,beta);
  
  for (i in 1:iter)
  {
    oldcluster = cluster;
    if (i %% 1 == 0)
    {
      #print(sprintf("iter %d %f",i,f));
    }
    #print(c);
    x = SmallChange(cluster);
    cluster = x$cluster;
    #print(cluster);
    #fnew = CCFit(cluster,a,beta);
    #(cluster,oldcluster,index,oldc,oldf,data)
    fnew = CCFitDiff(cluster,oldcluster,x$index,x$oldc,f,a,beta);
    #print(c(fnew,temp));
    if (fnew < f)
    {
      cluster = oldcluster;
      #f = fnew;
    }
    else
    {
      f = fnew;
    }
  }
  return(cluster);
}

CCFit <- function(cluster,a,beta)
{
  cc = 0.0;
  n <- length(cluster);
  for (i in 1:(n-1))
  {
    for (j in ((i+1):n))
    {
      c1 <- cluster[i];
      c2 <- cluster[j];
      #print(sprintf("%d %d",c1,c2));
      if (c1 == c2)
      {
        cc = cc + (a[i,j] - beta);
      }
    }
  }
  return(cc);
}

SmallChange <- function(cluster)
{
  n <- length(cluster);
  i <- sample(1:n,1);
  v <- sample(1:n,1);
  oldc = cluster[i];
  cluster[i] = v;
  res = NULL;
  res$cluster = cluster;
  res$index = i;
  res$oldc = oldc;
  return(res);
}

CCFitDiff <- function(cluster,oldcluster,index,oldc,oldf,a,beta)
{
  evm = oldf;
  n <- length(cluster);
  #Moved out of
  for (i in 1:n)
  {
    if (i != index && oldcluster[i] == oldc)
    {
      v = a[i,index];
      evm = evm - (v - beta)
      if (v == 1)
      {
        #evm = evm - 1;
        
      }
      else
      {
        #evm = evm + 1;
      }
    }
  }
  #Moved into
  for (i in 1:n)
  {
    newc = cluster[index];
    if (i != index && cluster[i] == newc)
    {
      v = a[i,index];
      evm = evm + (v - beta)
      if (v == 1)
      {
        #evm = evm + 1;
      }
      else
      {
        #evm = evm - 1;
      }
    }
  }
  return(evm);
}

CreateAgreement <- function(data)
{
  nr = dim(data)[1]
  nc = dim(data)[2]
  agree = matrix(0,nrow=nr,ncol=nr)
  #print(agree)
  for(i in 1:nc)
  {
    for(j in 1:(nr-1))
    {
      for(k in (j+1):nr)
      {
        c1 = data[j,i];
        c2 = data[k,i];
        if (c1 == c2)
        {
          agree[j,k] = agree[j,k] + 1;
          agree[k,j] = agree[k,j] + 1;
        }
      }
    }
  }
  return(agree);
}

CCTestRig <- function()
{
  source("F:\\Work\\USB\\Mahir\\2018.09.26 - CC WK Code and Results\\R Code\\wk.r")
  #c1 = c(1,2,1,2,3,3);
  #c2 = c(1,1,1,2,2,2);
  #c3 = c(1,2,1,3,3,3);
  #td = cbind(c1,c2,c3);
  #print(td)
  #nr = dim(td)[1]
  #nc = dim(td)[2]
  #print(nr)
  #print(nc)
  #a = CreateAGreement(td)
  #print(a)
  #print(CC(td,100))
  fn = "F:\\Work\\USB\\Mahir\\2018.09.26 - CC WK Code and Results\\Subset\\TipJoke.csv";
  data <-read.csv(fn,header=FALSE,sep=" ");
  nc <- ncol(data);
  nr <- nrow(data);
  print(paste(nr,nc,fn));
  data = as.matrix(data,nc)
  ec <- data[1:nr,nc];
  numc <- length(unique(ec));
  data <- data[1:nr,1:(nc-1)];
  print(dim(data))
  print(ec)
  a <- CreateAgreement(data);
  cc = CC(data,10000000) 
  print(CCFit(cc,a,(nc-1)/2))
  print(GroupingWK(cc,ec))
}