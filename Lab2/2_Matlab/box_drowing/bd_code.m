function [decode] = bd_code(code, from, to)
  % lut contiene tutte e tre le codifiche dei box drowing,
  % la prima è la mc memory code, la seconda è al bc bit code, la terza
  % è la sc string code
  %       mc   bc     sc
  lut= [["ruc","3","90"];
        ["o","5", "80"];
        ["luc","6", "8C"];
        ["ut","7", "AC"];
        ["rdc","9", "98"];
        ["v","A", "82"];
        ["rt","B", "A4"];
        ["ldc","C", "94"];
        ["dt","D", "B4"];
        ["lt","E", "9C"];
        ["c","F", "BC"];
        ];
      
  if from=="mc"
    from_count=1;
  elseif from=="bc"
    from_count=2;
  elseif from=="sc"  
    from_count=3;
  else
    disp("error!!!!!!!");
  end
  
  if to=="mc"
    to_count=1;
  elseif to=="bc"
    to_count=2;
  elseif to=="sc"  
    to_count=3;
  else
    disp("error!!!!!!!");
  end
  
  find=0;
  for i=1:length(lut(:,1))
    % se ho trovato il mio codice
    if from_count==3 
      if bdg(lut(i,from_count))==code
        find=1;
      end
    elseif lut(i,from_count)==code
      find=1;
    end
    
    if find==1
      if to_count==3
         decode=bdg(lut(i,to_count));
      else
         decode=lut(i,to_count);
      end
      break;
    end
  end
  if find==0
      decode="-1";
  end
end