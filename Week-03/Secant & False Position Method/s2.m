tic
xl=30;
xu=40;

[root,itertionNo] = secant(@ft,degtorad(xl),degtorad(xu),0.5,50);

disp('Root from Secant Method = ');
disp(radtodeg(root));

disp('No of itertions = ');
disp(itertionNo);

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    l
disp('Root from FalsePosition Method = ');
[root,itertionNo] = false_position(@ft,degtorad(xl),degtorad(xu),0.5,50);
disp(radtodeg(root));

disp('No of itertions = ');
disp(itertionNo);
toc
