# Pewlett Hackard Analysis

## Overview
The objective of this analysis is to present Pewlett Hackard, how the retirement program will affect its work force. PGAdmin PostgesSQL will be employed to present tables, lists and other forms of aggregates to demostrate this process. 

## Results
### Deliverable 1
- The first Query, employees that up for retirement, thats is, personel born between year 1952 and 1955 shown the retirements_titles.csv file. The table produced 133,776 entries   which is almost half of the work force 300,024 employees. This an incorrect amount due personel may have been promoted or change positions within the company over the years. This would have a greater concern to the company and would require urgent and rapid response.
- A more accurate table was created using the "DISTINCT ON" function in PostgreSQL, this function remove duplicate or identitcal entries from a specfic column and in this case the   "emp_no" column was used the uniquie_titles.csv file (Fig2.). With each unique employee now in this table the accurate figure 90,398 personel are on the retirement list. Almost   40,000 difference is extremly significant, using the list from the first query would have misguided the company descision. 
- Retrieving the positions (titles) and aggregates for each position from the unique_titles.csv file, gives Pewlett Hackard a clearer indication or prediction of what postions       that will be needed to filled and adjustments the company needs to under take. The figure retireing_titles.csv Fig3 shows how the job position will affected.    

### Deliverable 2
The massive migration of personel into retirement status, give reason for the company to react. Training the existing staff to fill the senior position is one way the company can begin to address this issue. The mentorship_eligibilty.csv file produces a glimpse or insight to some of the seniors members who eligibile for promotions and more senior role within the organisantion. Fig4.

## Summary
### How many roles will need to be filled as the "silver tsunami" begins to make an impact?
    Since the "DISTINCT ON" function gives an accrute aggregate of the amount person that will be affected by the "silver tsunnami", counting the
    number of rows in unique_titles will determine the amount rolles that will be needed to filled. Figure 5 shows the query which is 90,038
    
### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?



