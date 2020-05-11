function draw_splines(x_train,y_train,x_test,y_test)

    n = length(x_train);

    for i = 2:n
        pause(1);
        
        [x_train_splited,y_train_splited] = getSplitedXYMat(x_train,y_train,i);
        plot(x_train_splited,y_train_splited,'ob');
        scatter(x_train_splited,y_train_splited,75,'b','filled');
        hold on;
        
        plot(x_test,y_test,'*r');
        scatter(x_test,y_test,75,'r','filled');
        hold on;
        
        [b,c] = get_Quad_CoEff(x_train_splited,y_train_splited);
        
        x_draw = linspace(x_train(1),x_train(n),100);

        plot(x_draw,sn(x_draw,x_train_splited,y_train_splited,b,c),'-b');
        
        %hold on
        %plot(x_test(3),sn(x_test(3),x_splitTrain,y_splitTrain,b,c),'or');
        
        fprintf('Avg. Error(%c) taking %d Training Points :: %f\n','%',i,getAvgError(x_test,y_test,x_train_splited,y_train_splited,b,c));
        
        title('Quadratic Spline Interpolation');
        
        hold off;    
    end    
    
end