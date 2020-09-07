function plot_jbfill_median_se (mtx, x_point,colorstr)
%function [figh] = plot_jbfill_mean_se (mtx,x_point,colorstr)
%this function use jbfill function to plot mean and se for input matrix
%%

% figh = gcf;%
% figh = figure;hold on;
% pbaspect([1.66 1 1])
mtx_mean = nanmedian(mtx,1);
mtx_se = sqrt(nanvar(mtx,1,1)./size(mtx,1)); %?? 1 -- use N
plot(x_point,mtx_mean,'color',colorstr);
jbfill(x_point,mtx_mean+mtx_se,mtx_mean-mtx_se,colorstr,colorstr,1,0.3); hold on;
end