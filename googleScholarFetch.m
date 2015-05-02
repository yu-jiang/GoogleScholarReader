function [totalCitation, FiveYearCitation]= googleScholarFetch(link)
% The file reads the citation numbers from the google scholar profile
% link must be a google scholar profile page string format
% Example:
% >> link = 'https://scholar.google.com/citations?user=QYanTRsAAAAJ';
% >> [t,f] = googleScholarFetch(link);
html = urlread(link);
html1 = regexp(html,'<td class="gsc_rsb_std">.*</td>','match');
str = regexp(html1{1},'\d*','match');
totalCitation = str2double(str(1));
FiveYearCitation = str2double(str(2));
end
