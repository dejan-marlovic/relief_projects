DROP DATABASE IF EXISTS relief_projects;
CREATE DATABASE relief_projects;
USE relief_projects;



CREATE TABLE positions (
    position_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    position_name VARCHAR(255) NOT NULL,
    is_deleted BOOLEAN DEFAULT FALSE,
    deleted_at DATETIME DEFAULT NULL
);


CREATE TABLE employees (
    employee_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    position_id BIGINT,
    FOREIGN KEY (position_id)
        REFERENCES positions (position_id),
    is_deleted BOOLEAN DEFAULT FALSE,
    deleted_at DATETIME DEFAULT NULL
);


/*for external users employees can create mulitple accounts ?*/
CREATE TABLE users (
    user_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    employee_id BIGINT NOT NULL,
    username VARCHAR(255) UNIQUE NOT NULL,
    password_hash VARCHAR(255) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (employee_id)
        REFERENCES employees (employee_id),
    is_deleted BOOLEAN DEFAULT FALSE,
    deleted_at DATETIME DEFAULT NULL
);


CREATE TABLE currencies (
    currency_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    currency_name VARCHAR(50),
    currency_description VARCHAR(255),
    is_deleted BOOLEAN DEFAULT FALSE,
    deleted_at DATETIME DEFAULT NULL
);

CREATE TABLE exchange_rates (
    exchange_rate_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    currency_id BIGINT NOT NULL,
    exchange_rate DECIMAL(15 , 6 ) NOT NULL,
    rate_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (currency_id)
        REFERENCES currencies (currency_id),
    is_deleted BOOLEAN DEFAULT FALSE,
    deleted_at DATETIME DEFAULT NULL
);

CREATE TABLE cost_types (
    cost_type_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    cost_type_name VARCHAR(255),
    is_deleted BOOLEAN DEFAULT FALSE,
    deleted_at DATETIME DEFAULT NULL
);

CREATE TABLE costs (
    cost_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    cost_name VARCHAR(255),
    cost_type_id BIGINT NOT NULL,
    FOREIGN KEY (cost_type_id)
        REFERENCES cost_types (cost_type_id),
    is_deleted BOOLEAN DEFAULT FALSE,
    deleted_at DATETIME DEFAULT NULL
);

CREATE TABLE project_statuses (
    project_status_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    status_name VARCHAR(50),
    is_deleted BOOLEAN DEFAULT FALSE,
    deleted_at DATETIME DEFAULT NULL
);



CREATE TABLE addresses (
    address_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    street VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(50),
    postal_code VARCHAR(20),
    country VARCHAR(50),
    is_deleted BOOLEAN DEFAULT FALSE,
    deleted_at DATETIME DEFAULT NULL
);

CREATE TABLE organization_statuses (
    organization_status_id BIGINT AUTO_INCREMENT KEY,
    organization_status_name VARCHAR(255),
    is_deleted BOOLEAN DEFAULT FALSE,
    deleted_at DATETIME DEFAULT NULL
);



CREATE TABLE organizations (
    organization_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    organization_name VARCHAR(255) NOT NULL,
    contact_email VARCHAR(255),
    contact_phone VARCHAR(255),
    address_id BIGINT,
    FOREIGN KEY (address_id)
        REFERENCES addresses (address_id),
    organization_status_id BIGINT,
    FOREIGN KEY (organization_status_id)
        REFERENCES organization_statuses (organization_status_id),
    is_deleted BOOLEAN DEFAULT FALSE,
    deleted_at DATETIME DEFAULT NULL
);


CREATE TABLE projects (
    project_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    ref_project_no VARCHAR(255),
    project_name VARCHAR(255) NOT NULL,
    pin_code VARCHAR(255),
    donor_organization BIGINT,
    FOREIGN KEY (donor_organization)
        REFERENCES organizations (organization_id),
    funding_source VARCHAR(255),
    implementing_partner_organization_id BIGINT,
    FOREIGN KEY (implementing_partner_organization_id)
        REFERENCES organizations (organization_id),
    address_id BIGINT,
    FOREIGN KEY (address_id)
        REFERENCES addresses (address_id),
    fo_support_cost_percent DECIMAL(4 , 2 ),
    IRW_support_cost_percent DECIMAL(4 , 2 ),
    project_description TEXT,
    project_status_id BIGINT NOT NULL,
    FOREIGN KEY (project_status_id)
        REFERENCES project_statuses (project_status_id),
    approved ENUM('Yes', 'No') NOT NULL,
    project_period_months BIGINT,
    project_date DATETIME NOT NULL,
    project_start DATETIME NOT NULL,
    project_end DATETIME NOT NULL,
    project_start_rev DATETIME,
    project_end_rev DATETIME,
    part_of BIGINT,
    is_deleted BOOLEAN DEFAULT FALSE,
    deleted_at DATETIME DEFAULT NULL
);



CREATE TABLE budgets (
    project_id BIGINT NOT NULL,
    FOREIGN KEY (project_id)
        REFERENCES projects (project_id),
    budget_id BIGINT AUTO_INCREMENT PRIMARY KEY,
	budget_description VARCHAR(1000),
    budget_preparation_date DATETIME,
    total_amount DECIMAL(20 , 2 ) NOT NULL,
    local_currency BIGINT,
    FOREIGN KEY (local_currency)
        REFERENCES currencies (currency_id),
    local_currency_to_GBP BIGINT,
    FOREIGN KEY (local_currency)
        REFERENCES currencies (currency_id),
    reporting_currency_SEK BIGINT,
    FOREIGN KEY (local_currency)
        REFERENCES currencies (currency_id),
    reporting_currency_EUR BIGINT,
    FOREIGN KEY (local_currency)
        REFERENCES currencies (currency_id),
    local_exchange_rate_id BIGINT,
    FOREIGN KEY (local_exchange_rate_id)
        REFERENCES exchange_rates (exchange_rate_id),
    local_exchange_rate_to_GBP BIGINT,
    FOREIGN KEY (local_exchange_rate_to_GBP)
        REFERENCES exchange_rates (exchange_rate_id),
    reporting_exchange_rate_SEK BIGINT NOT NULL,
    FOREIGN KEY (reporting_exchange_rate_SEK)
        REFERENCES exchange_rates (exchange_rate_id),
    reporting_exchange_rate_EUR BIGINT NOT NULL,
    FOREIGN KEY (reporting_exchange_rate_EUR)
        REFERENCES exchange_rates (exchange_rate_id),
    is_deleted BOOLEAN DEFAULT FALSE,
    deleted_at DATETIME DEFAULT NULL
);


CREATE TABLE cost_details (
    budget_id BIGINT NOT NULL,
    FOREIGN KEY (budget_id)
        REFERENCES budgets (budget_id),
    cost_detail_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    cost_type_id BIGINT NOT NULL,
    cost_id BIGINT NOT NULL,
    FOREIGN KEY (cost_type_id)
        REFERENCES cost_types (cost_type_id),
    FOREIGN KEY (cost_id)
        REFERENCES costs (cost_id),
    cost_description VARCHAR(255),
    no_of_units BIGINT,
    frequency_months BIGINT,
    unit_price DECIMAL(20 , 2 ),
    percentage_charging DECIMAL(6 , 3 ),
    amount_local_currency DECIMAL(20 , 3 ),
    amount_reporting_currency DECIMAL(20 , 3 ),
    amount_GBP DECIMAL(20 , 3 ),
    amount_EURO DECIMAL(20 , 3 ),
    is_deleted BOOLEAN DEFAULT FALSE,
    deleted_at DATETIME DEFAULT NULL
);



/*
Ask Dario about part_of column
Ask Dario about pin column
Aask Dario about number of employees for each project
Ask Dario if a person who is not part of the project can be owner of a document that 
belongs to a project.
Should document belong to employee?
Can multiple employees be part of the same project is that what servicePeronal 
table is for
Explain Transaction table
Sector table
*/



CREATE TABLE documents (
    document_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    employee_id BIGINT NOT NULL,
    document_name VARCHAR(255),
    document_path VARCHAR(1000),
    FOREIGN KEY (employee_id)
        REFERENCES employees (employee_id),
    project_id BIGINT NOT NULL,
    FOREIGN KEY (project_id)
        REFERENCES projects (project_id),
    is_deleted BOOLEAN DEFAULT FALSE,
    deleted_at DATETIME DEFAULT NULL
);

CREATE TABLE memos (
    memo_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    message TEXT,
    position_id BIGINT NOT NULL,
    FOREIGN KEY (position_id)
        REFERENCES positions (position_id),
    project_id BIGINT NOT NULL,
    FOREIGN KEY (project_id)
        REFERENCES projects (project_id),
    memo_date DATE NOT NULL,
    is_deleted BOOLEAN DEFAULT FALSE,
    deleted_at DATETIME DEFAULT NULL
);







CREATE TABLE bank_details (
    bank_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    organization_id BIGINT,
    FOREIGN KEY (organization_id)
        REFERENCES organizations (organization_id),
    bank_name VARCHAR(255) NOT NULL,
    account_number VARCHAR(50) UNIQUE NOT NULL,
    branch_name VARCHAR(255),
    swift_code VARCHAR(20),
    is_deleted BOOLEAN DEFAULT FALSE,
    deleted_at DATETIME DEFAULT NULL
);

CREATE TABLE locations (
    location_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    location_name VARCHAR(255),
    geo_coordinates POINT,
    address_id BIGINT,
    FOREIGN KEY (address_id)
        REFERENCES addresses (address_id),
    is_deleted BOOLEAN DEFAULT FALSE,
    deleted_at DATETIME DEFAULT NULL
);

CREATE TABLE partners (
    partner_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    project_id BIGINT NOT NULL,
    FOREIGN KEY (project_id)
        REFERENCES projects (project_id),
    organization_id BIGINT NOT NULL,
    FOREIGN KEY (organization_id)
        REFERENCES organizations (organization_id),
    partner_organization_id BIGINT,
    FOREIGN KEY (partner_organization_id)
        REFERENCES organizations (organization_id),
    is_deleted BOOLEAN DEFAULT FALSE,
    deleted_at DATETIME DEFAULT NULL
);


CREATE TABLE employee_project (
    project_participant_id BIGINT NOT NULL PRIMARY KEY,
    project_id BIGINT NOT NULL,
    FOREIGN KEY (project_id)
        REFERENCES projects (project_id),
    employee_id BIGINT NOT NULL,
    FOREIGN KEY (employee_id)
        REFERENCES employees (employee_id),
    position_id BIGINT NOT NULL,
    FOREIGN KEY (position_id)
        REFERENCES positions (position_id),
    is_deleted BOOLEAN DEFAULT FALSE,
    deleted_at DATETIME DEFAULT NULL
);


CREATE TABLE transaction_statuses (
    transaction_status_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    transaction_status_name VARCHAR(255),
    is_deleted BOOLEAN DEFAULT FALSE,
    deleted_at DATETIME DEFAULT NULL
);

CREATE TABLE transactions (
    transaction_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    organization_id BIGINT NOT NULL,
    FOREIGN KEY (organization_id)
        REFERENCES organizations (organization_id),
    project_id BIGINT NOT NULL,
    FOREIGN KEY (project_id)
        REFERENCES projects (project_id),
    financier_organization_id BIGINT NOT NULL,
    FOREIGN KEY (financier_organization_id)
        REFERENCES organizations (organization_id),
    transaction_status_id BIGINT NOT NULL,
    FOREIGN KEY (transaction_status_id)
        REFERENCES transaction_statuses (transaction_status_id),
    applied_for_amount BIGINT,
    applied_for_exchange_rate_id BIGINT,
    FOREIGN KEY (applied_for_exchange_rate_id)
        REFERENCES exchange_rates (exchange_rate_id),
    first_share_SEK_amount DECIMAL(20 , 2 ),
    first_sahre_amount DECIMAL(20 , 2 ),
    approved_amount BIGINT,
    approved_amount_currency_id BIGINT NOT NULL,
    FOREIGN KEY (approved_amount_currency_id)
        REFERENCES currencies (currency_id),
    approved_amount_exchange_rate_id BIGINT NOT NULL,
    FOREIGN KEY (approved_amount_exchange_rate_id)
        REFERENCES exchange_rates (exchange_rate_id),
    own_contribution ENUM('Yes', 'No') NOT NULL,
    second_share_amount_SEK DECIMAL(20 , 2 ),
    second_share_amount DECIMAL(20 , 2 ),
    date_planned DATETIME,
    OK ENUM('Yes', 'No') NOT NULL,
    is_deleted BOOLEAN DEFAULT FALSE,
    deleted_at DATETIME DEFAULT NULL
);

CREATE TABLE signature_statuses (
    signature_status_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    signature_status_name VARCHAR(255),
      is_deleted BOOLEAN DEFAULT FALSE,
    deleted_at DATETIME DEFAULT NULL
);


CREATE TABLE payment_orders (
    payment_order_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    transaction_id BIGINT NOT NULL,
    FOREIGN KEY (transaction_id)
        REFERENCES transactions (transaction_id),
    payment_order_date DATETIME,
    number_of_transactions BIGINT,
    payment_order_description TEXT,
    amount DECIMAL(20 , 6 ),
    total_amount DECIMAL(20 , 6 ),
    message VARCHAR(255),
    pin_code VARCHAR(50),
    is_deleted BOOLEAN DEFAULT FALSE,
    deleted_at DATETIME DEFAULT NULL
);




CREATE TABLE signatures (
    signature_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    signature_status_id BIGINT NOT NULL,
    FOREIGN KEY (signature_status_id)
        REFERENCES signature_statuses (signature_status_id),
    employee_id BIGINT NOT NULL,
    FOREIGN KEY (employee_id)
        REFERENCES employees (employee_id),
    payment_order_id BIGINT NOT NULL,
    FOREIGN KEY (payment_order_id)
        REFERENCES payment_orders (payment_order_id),
    signature VARCHAR(50) NOT NULL,
    signature_date DATETIME,
    is_deleted BOOLEAN DEFAULT FALSE,
    deleted_at DATETIME DEFAULT NULL
);

CREATE TABLE recipients (
    recipient_id BIGINT AUTO_INCREMENT PRIMARY KEY,
    organization_id BIGINT NOT NULL,
    payment_order_id BIGINT NOT NULL,
    FOREIGN KEY (payment_order_id)
        REFERENCES payment_orders (payment_order_id),
    is_deleted BOOLEAN DEFAULT FALSE,
    deleted_at DATETIME DEFAULT NULL
);

