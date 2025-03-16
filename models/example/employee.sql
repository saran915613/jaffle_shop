{{ config(materialized='incremental') }}

with employee_data as (

    select  person_id :: integer,
            employee_number :: VARCHAR(30),
            effective_start_date :: DATE,
            effective_end_date :: DATE,
            person_type_id :: integer,
            first_name :: VARCHAR(150),
            middle_names :: VARCHAR(60),
            last_name :: VARCHAR(150),
            full_name :: VARCHAR(240),
            sup_person_id :: integer,
            sup_employee_number :: VARCHAR(30),
            sup_start_date :: DATE,
            sup_end_date :: DATE,
            sup_person_type_id :: integer,
            sup_first_name :: VARCHAR(150),
            sup_middle_names :: VARCHAR(60),
            sup_last_name :: VARCHAR(150),
            sup_full_name :: VARCHAR(240),
            start_date :: DATE,
            applicant_number :: VARCHAR(30),
            background_check_status :: VARCHAR(30),
            background_date_check :: VARCHAR(30),
            blood_type :: VARCHAR(30),
            correspondence_language :: VARCHAR(30),
            current_applicant_flag :: VARCHAR(30),
            current_emp_or_apl_flag :: VARCHAR(30),
            current_employee_flag :: VARCHAR(30),
            date_employee_data_verified :: VARCHAR(30),
            email_address :: VARCHAR(240),
            marital_status :: VARCHAR(30),
            nationality :: VARCHAR(30),
            previous_last_name :: VARCHAR(150),
            projected_start_date :: VARCHAR(30),
            rehire_authorizor :: VARCHAR(30),
            rehire_reason :: VARCHAR(60),
            rehire_recommendation :: VARCHAR(30),
            sex :: VARCHAR(30),
            last_update_date :: VARCHAR(30),
            last_updated_by :: integer,
            creation_date :: VARCHAR(30),
            created_by :: integer,
            object_version_number :: integer,
            date_of_death :: VARCHAR(30),
            original_date_of_hire :: VARCHAR(30),
            town_of_birth :: VARCHAR(90),
            region_of_birth :: VARCHAR(90),
            country_of_birth :: VARCHAR(90),
            party_id :: integer,
            global_name :: VARCHAR(240),
            local_name :: VARCHAR(240),
            approval_limit :: VARCHAR(150),
            job_name :: VARCHAR(700),
            cost_center :: VARCHAR(25),
            brand :: VARCHAR(25),
            geo :: VARCHAR(25),
            channel :: VARCHAR(25),
            gl_string :: VARCHAR(207),
            attribute_category :: VARCHAR(30),
            attribute1 :: VARCHAR(150),
            attribute2 :: VARCHAR(150),
            attribute3 :: VARCHAR(150),
            attribute4 :: VARCHAR(150),
            attribute5 :: VARCHAR(150),
            attribute6 :: VARCHAR(150),
            attribute7 :: VARCHAR(150),
            attribute8 :: VARCHAR(150),
            attribute9 :: VARCHAR(150),
            attribute10 :: VARCHAR(150)


    from {{ source('fivetran_SFTP_source','employee') }}

)

select * from employee_data
