function [r, p_val] = corr_heatmap(X, datalabels, corr_type, showheatmap)
% type choices: 'Pearson', 'Kendall' , 'Spearman'

[r, p_val] = corr(X, 'Type', corr_type);

if showheatmap
    figure(showheatmap);
    
    subplot(1,2,1);
    customized_heatmap(r, datalabels, datalabels, '%0.2f', 'TickAngle', 90, 'GridLines', ':');
%     imagesc(r);
%     set(gca, 'XTick', 1:length(r));
%     set(gca, 'YTick', 1:length(r));
%     set(gca, 'XTickLabel', datalabels);
%     set(gca, 'YTickLabel', datalabels);
%     xtickangle(90);
    title('r');
    colorbar;
    axis square;
    
    subplot(1,2,2);
    customized_heatmap(p_val, datalabels, datalabels, '%0.2f', 'TickAngle', 90, 'GridLines', ':');
%     imagesc(p_val);
%     set(gca, 'XTick', 1:length(p_val));
%     set(gca, 'YTick', 1:length(p_val));
%     set(gca, 'XTickLabel', datalabels);
%     set(gca, 'YTickLabel', datalabels);
%     xtickangle(90);
    title('p value');
    colorbar;
    axis square;

    colormap('cool');
end
