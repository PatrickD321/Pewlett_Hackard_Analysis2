# Pewlett Hackard Analysis

## Overview
The objective of this analysis is to present Pewlett Hackard, how the retirement program will affect its work force. PGAdmin PostgesSQL will be employed to present tables, lists and other forms of aggregates to demostrate this process. 

## Results
### Deliverable 1
- The first Query, employees that are up for retirement, thats is, personel born between year 1952 and 1955 shown the retirements_titles.csv file. The table produced 133,776 entries  which is almost half of the work force 300,024 employees. Innspection of table shows employee number that appear more the once, this an incorrect amount due to personel may have been promoted or change positions within the company over the years. This would have a greater concern to the company and would require urgent and a more rapid response to this issue. Figure 1 show mulitiple entry of the same "emp_no"  ![Fig1](https://user-images.githubusercontent.com/78861458/113513396-88745f80-9537-11eb-8f8a-9a61badf2a69.png)

- A more accurate table was created using the "DISTINCT ON" function in PostgreSQL, this function remove duplicate or identitcal entries from a specfic column and in this case the   "emp_no" column was used the uniquie_titles.csv file (Fig2.)
- .With each unique employee now in this table the accurate figure 90,398 personel are on the retirement list. Almost   40,000 difference is extremly significant, using the list from the first query would have misguided the company descision. 
- Retrieving the positions (titles) and aggregates for each position from the unique_titles.csv file, gives Pewlett Hackard a clearer indication or prediction of what postions that will be needed to filled and adjustments the company needs to under take. The figure retireing_titles.csv, Fig3, shows how the job position will affected.![Fig3](https://user-images.githubusercontent.com/78861458/113513599-7941e180-9538-11eb-816c-72bc450b106d.png)
    

### Deliverable 2
The massive migration of personel into retirement, gives the company a good reason to react extreamly urgently. Training the existing staff to fill the senior position is one way the company can begin to address this issue. The mentorship_eligibilty.csv file produces a glimpse or insight to some of the seniors members who are eligibile for promotions to filled these positions that will become vacant shortly. Query the employee table for current employee born in the year 1965 is one means to determine staff that senior in the company. Figure 4, (Fig4) the mentorship_eligibilty displays this results.![Fig4](https://user-images.githubusercontent.com/78861458/113513984-1bae9480-953a-11eb-8809-6bfba4c3efd8.png)


## Summary

### How many roles will need to be filled as the "silver tsunami" begins to make an impact?
Since the "DISTINCT ON" function gives an accrute aggregate of the amount person that will be affected by the "silver tsunnami", counting the number of rows in unique_titles will determine the amount rolles that will be needed to filled. Figure 5 shows the query which is 90,038![Fig5](https://user-images.githubusercontent.com/78861458/113519200-bc13b180-9558-11eb-82c7-5a92653a8c1d.png)

    
### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
Employee slated for mentorship programs are determine by the amount years current emplyees are employed to the company and the year that their were born. The mentorship_eligibilty query which returns current personel born in the year 1965 gives a total 1940 names as shown in figure 6 (Fig6) ![Fig6](https://user-images.githubusercontent.com/78861458/113519369-b1a5e780-9559-11eb-9613-40a038853c77.png)
The amount of personel on this list is by far too small to satisfy the demand that is needed to mitigate against this "silver tsunami". Pewlett Hackard will need a wider criteria or more than one aspect to select personel to the list. However, the over 90,000 employees on the list for retirement is enough train or mentor the next generation of Pewlett Hackard employees. Figure 3 shows the bulk of the retirees holds senior position within the company, and even wih a bigger list for the mentorship program there will be no issues training and preparing staff for future endeavors. 



