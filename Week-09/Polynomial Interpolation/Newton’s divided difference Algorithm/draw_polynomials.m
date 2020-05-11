function draw_polynomials(x_train,y_train,x_test,y_test)
    n = length(x_train);
    for i = 2:n
        pause(1);
        
        [x_train_splited,y_train_splited] = getSplitedXYMat(x_train,y_train,i);
        plot(x_train_splited,y_train_splited,'ob');
        scatter(x_train_splited,y_train_splited,55,'b','filled');
        hold on;
        
        plot(x_test,y_test,'*r');
        scatter(x_test,y_test,55,'r','filled');
        hold on;
        
        b = NewtDivDifTable(x_train_splited,y_train_splited);
        
        x_draw = linspace(x_train(1),x_train(n),100);
        plot(x_draw,pn(x_draw,x_train_splited,b),'-b');
        
        fprintf('Avg. Error(%c) taking %d Training Points :: %f\n','%',i,getAvgError(x_test,y_test,x_train_splited,b));
        
        title('Newton Interpolation Divided Difference Polynomial');
        
        hold off;    
    end    
end