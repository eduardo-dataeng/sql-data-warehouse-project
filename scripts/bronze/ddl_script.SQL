
CREATE OR ALTER PROCEDURE bronze.load_bronze_data AS 
BEGIN
	PRINT'==================================================================================';
	PRINT'LOADING BRONZE LAYER';
	PRINT'==================================================================================';


	PRINT'----------------------------------------------------------------------------------';
	PRINT'LOADING ERP TABLES';
	PRINT'----------------------------------------------------------------------------------';

	PRINT'>> Truncating table:bronze.erp_categories';
	TRUNCATE TABLE bronze.erp_categories

	PRINT'>> Inserting table:bronze.erp_categories';
	BULK INSERT bronze.erp_categories
	FROM 'C:\Users\EduardoDuarte\OneDrive - P Tuckwell LTD\Desktop\source_erp\PX_CAT_G1V2.csv'
	WITH ( 
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
		);


	PRINT'>> Truncating table:bronze.erp_cust_master';
	TRUNCATE TABLE bronze.erp_cust_master

	PRINT'>> Inserting table:bronze.erp_cust_master';
	BULK INSERT bronze.erp_cust_master
	FROM 'C:\Users\EduardoDuarte\OneDrive - P Tuckwell LTD\Desktop\source_erp\CUST_AZ12.csv'
	WITH ( 
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
		);


	PRINT'>> Truncating table:bronze.erp_local';
	TRUNCATE TABLE bronze.erp_local

	PRINT'>> Inserting table:bronze.erp_local';
	BULK INSERT bronze.erp_local
	FROM 'C:\Users\EduardoDuarte\OneDrive - P Tuckwell LTD\Desktop\source_erp\LOC_A101.csv'
	WITH ( 
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
		);


	PRINT'----------------------------------------------------------------------------------';
	PRINT'LOADING CRM TABLES';
	PRINT'----------------------------------------------------------------------------------';

	PRINT'>> Truncating table:bronze.crm_cust_info';
	TRUNCATE TABLE bronze.crm_cust_info

	PRINT'>> Inserting table:bronze.crm_cust_info';
	BULK INSERT bronze.crm_cust_info
	FROM 'C:\Users\EduardoDuarte\OneDrive - P Tuckwell LTD\Desktop\source_crm\cust_info.csv'
	WITH ( 
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
		);


	PRINT'>> Truncating table:bronze.crm_prd_inf';
	TRUNCATE TABLE bronze.crm_prd_info

	PRINT'>> Inserting table:bronze.crm_prd_info';
	BULK INSERT bronze.crm_prd_info
	FROM 'C:\Users\EduardoDuarte\OneDrive - P Tuckwell LTD\Desktop\source_crm\prd_info.csv'
	WITH ( 
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
		);
	

	PRINT'>> Truncating table:bronze.crm_sales_details';
	TRUNCATE TABLE bronze.crm_sales_details

	PRINT'>> Inserting table:bronze.crm_sales_details';
	BULK INSERT bronze.crm_sales_details
	FROM 'C:\Users\EduardoDuarte\OneDrive - P Tuckwell LTD\Desktop\source_crm\sales_details.csv'
	WITH ( 
		FIRSTROW = 2,
		FIELDTERMINATOR = ',',
		TABLOCK
		);

END
