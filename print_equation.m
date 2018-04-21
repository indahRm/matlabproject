function [str] = print_equation(p)
str=['y = '];
L=length(p);

for i=1:L
    if L==1
        str=[num2str(p(i)) 'x'];
    elseif p(i)==0
    
    elseif p(i)<0
        if i==(L-1)
                str=[str ' - ' num2str(abs(p(i))) 'x'];
        elseif i==L
                str=[str ' - ' num2str(abs(p(i)))];
        else
            str=[str ' - ' num2str(abs(p(i))) 'x^' num2str(L-i)];
        end
    elseif i==1
        if p(i)>0
            if i==(L-1)
                str=[num2str(p(i)) 'x'];
            else
                str=[num2str(p(i)) 'x^' num2str(L-i)];
            end
        end
    elseif i==(L-1)
        str=[str ' + ' num2str(p(i)) 'x'];
    elseif i==(L)
        str=[str ' + ' num2str(p(i))];
    else i
        str=[str ' + ' num2str(p(i)) 'x^' num2str(L-i)];
    end
end
end