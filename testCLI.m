homeDir = pwd;
cd(fullfile(pwd, 'Add2Numbers'));
testData1 = [1, 2, 3, 4, 0];
testData2 = [5, 6, 7, 8, 0];
for i = 1:length(testData1)
    disp(['Test Case ', num2str(i), ': ', num2str(testData1(i)), ' + ', num2str(testData2(i))])
    result = Add2Numbers(testData1(i), testData2(i));
    if result == testData1(i) + testData2(i)
        disp(['Result: ', num2str(result), ' | Pass'])
    else
        error(['Result: ', num2str(result), ' | Fail'])
    end
end
cd(homeDir);