** Created Age_Group column on CC table so that we can group our customer based on below category for further analysis.

Age_Group = SWITCH(TRUE(),
            'public cust_details'[customer_age] < 30,"20-30",
            'public cust_details'[customer_age] >=30 && 'public cust_details'[customer_age] < 40,"30-40",
            'public cust_details'[customer_age] >=40 && 'public cust_details'[customer_age] < 50,"40-50",
            'public cust_details'[customer_age] >=50 && 'public cust_details'[customer_age] < 60, "50-60",
            'public cust_details'[customer_age] >=60, "60+",
            "Unknown")

** Created Income_Group column on Customer table so that we can group our customer based on below category for further analysis.

Income_Group = SWITCH( TRUE(),
                        'public cust_details'[income] < 35000 , "Low",
                        'public cust_details'[income] >=35000 && 'public cust_details'[income] <70000, "Med",
                        'public cust_details'[income] >= 70000, "High",
                        "Unknown")

** Created Revenue column on CC table so that we can get revenue for different insights and further analysis.

Revenue = 'public cc_details'[annual_fees] + 'public cc_details'[total_trans_amt] + 'public cc_details'[interest_earned]


** Created Week_Num2 column on CC table we did this step because we are creating this dashboard based on weeks number in serial order.
Week_Num2 = WEEKNUM('public cc_details'[week_start_date])

** Created 2 measures (current_week_revenue and previous_week_revenue) so that we can calculate revenue between two weeks
Current_week_revenue = CALCULATE(
                                sum('public cc_details'[Revenue]),
                                FILTER(
                                    ALL('public cc_details'),
                                'public cc_details'[Week_Num2] = MAX('public cc_details'[Week_Num2])))


Previous_week_revenue = CALCULATE(
                    SUM('public cc_details'[Revenue]),
                    FILTER(
                        ALL('public cc_details'),
                        'public cc_details'[Week_Num2] = MAX('public cc_details'[Week_Num2])-1))

** Created (week_over_week) wow_revenue to calculate total earning within a week in percentage.

wow_revenue = DIVIDE(([Current_week_revenue] - [Previous_week_revenue]),[Previous_week_revenue])