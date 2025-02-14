

INSERT INTO positions (position_name) VALUES 
('Project Manager'),
('Project Assistant'),
('Case Manager');


INSERT INTO employees (first_name, last_name, position_id) VALUES
('Dejan', 'Marlovic', 1),
('Bob', 'Smith', 2),
('Charlie', 'Brown', 3),
('David', 'Williams', 1),
('Emma', 'Jones', 2),
('Frank', 'Miller', 3),
('Grace', 'Davis', 1),
('Henry', 'Wilson', 2),
('Isabella', 'Moore', 3),
('Jack', 'Taylor', 1),
('Katie', 'Anderson', 2),
('Liam', 'Thomas', 3),
('Mia', 'Jackson', 1),
('Nathan', 'White', 2),
('Olivia', 'Harris', 3),
('Paul', 'Martin', 1),
('Quinn', 'Thompson', 2),
('Rachel', 'Garcia', 3),
('Samuel', 'Martinez', 1),
('Tina', 'Robinson', 2),
('Umar', 'Clark', 3),
('Victoria', 'Rodriguez', 1),
('William', 'Lewis', 2),
('Xander', 'Lee', 3),
('Yasmine', 'Walker', 1),
('Zane', 'Hall', 2),
('Anna', 'Allen', 3),
('Benjamin', 'Young', 1),
('Catherine', 'Hernandez', 2),
('Daniel', 'King', 3),
('Eleanor', 'Wright', 1),
('Felix', 'Lopez', 2),
('Gabriella', 'Scott', 3),
('Harrison', 'Green', 1),
('Ivy', 'Adams', 2),
('Jacob', 'Baker', 3),
('Kara', 'Gonzalez', 1),
('Leo', 'Nelson', 2),
('Megan', 'Carter', 3),
('Noah', 'Mitchell', 1),
('Olga', 'Perez', 2),
('Peter', 'Roberts', 3),
('Quincy', 'Evans', 1),
('Riley', 'Collins', 2),
('Sophia', 'Stewart', 3),
('Tristan', 'Sanchez', 1),
('Ulysses', 'Morris', 2),
('Vanessa', 'Rogers', 3),
('Wyatt', 'Reed', 1);


INSERT INTO users (employee_id, username, password_hash, email)
VALUES
(1, 'alice.johnson', SHA2('apassword1231d', 256), 'alice.johnson@example.com'),
(2, 'bob.smith', SHA2('password1232', 256), 'bob.smith@example.com'),
(3, 'charlie.brown', SHA2('password1233', 256), 'charlie.brown@example.com'),
(4, 'david.williams', SHA2('password1234', 256), 'david.williams@example.com'),
(5, 'emma.jones', SHA2('password125', 256), 'emma.jones@example.com'),
(6, 'frank.miller', SHA2('password126', 256), 'frank.miller@example.com'),
(7, 'grace.davis', SHA2('password127', 256), 'grace.davis@example.com'),
(8, 'henry.wilson', SHA2('password1238', 256), 'henry.wilson@example.com'),
(9, 'isabella.moore', SHA2('password1239', 256), 'isabella.moore@example.com'),
(10, 'jack.taylor', SHA2('password1231456', 256), 'jack.taylor@example.com'),
(11, 'katie.anderson', SHA2('password12311', 256), 'katie.anderson@example.com'),
(12, 'liam.thomas', SHA2('password12312', 256), 'liam.thomas@example.com'),
(13, 'mia.jackson', SHA2('password12313', 256), 'mia.jackson@example.com'),
(14, 'nathan.white', SHA2('password12314', 256), 'nathan.white@example.com'),
(15, 'olivia.harris', SHA2('password12315', 256), 'olivia.harris@example.com'),
(16, 'paul.martin', SHA2('password12316', 256), 'paul.martin@example.com'),
(17, 'quinn.thompson', SHA2('password12317', 256), 'quinn.thompson@example.com'),
(18, 'rachel.garcia', SHA2('password12318', 256), 'rachel.garcia@example.com'),
(19, 'samuel.martinez', SHA2('password12319', 256), 'samuel.martinez@example.com'),
(20, 'tina.robinson', SHA2('password12320', 256), 'tina.robinson@example.com'),
(21, 'umar.clark', SHA2('password12321', 256), 'umar.clark@example.com'),
(22, 'victoria.rodriguez', SHA2('password12322', 256), 'victoria.rodriguez@example.com'),
(23, 'william.lewis', SHA2('password12323', 256), 'william.lewis@example.com'),
(24, 'xander.lee', SHA2('password12324', 256), 'xander.lee@example.com'),
(25, 'yasmine.walker', SHA2('password12325', 256), 'yasmine.walker@example.com'),
(26, 'zane.hall', SHA2('password12325d', 256), 'zane.hall@example.com'),
(27, 'anna.allen', SHA2('password12327', 256), 'anna.allen@example.com'),
(28, 'benjamin.young', SHA2('password12328', 256), 'benjamin.young@example.com'),
(29, 'catherine.hernandez', SHA2('password12329', 256), 'catherine.hernandez@example.com'),
(30, 'daniel.king', SHA2('password12330', 256), 'daniel.king@example.com'),
(31, 'eleanor.wright', SHA2('password12331', 256), 'eleanor.wright@example.com'),
(32, 'felix.lopez', SHA2('password12332', 256), 'felix.lopez@example.com'),
(33, 'gabriella.scott', SHA2('password12333', 256), 'gabriella.scott@example.com'),
(34, 'harrison.green', SHA2('password12334', 256), 'harrison.green@example.com'),
(35, 'ivy.adams', SHA2('password12335', 256), 'ivy.adams@example.com'),
(36, 'jacob.baker', SHA2('password12336', 256), 'jacob.baker@example.com'),
(37, 'kara.gonzalez', SHA2('password12337', 256), 'kara.gonzalez@example.com'),
(38, 'leo.nelson', SHA2('password12338', 256), 'leo.nelson@example.com'),
(39, 'megan.carter', SHA2('password12339', 256), 'megan.carter@example.com'),
(40, 'noah.mitchell', SHA2('password12340', 256), 'noah.mitchell@example.com'),
(41, 'olga.perez', SHA2('password12341', 256), 'olga.perez@example.com'),
(42, 'peter.roberts', SHA2('password12342', 256), 'peter.roberts@example.com'),
(43, 'quincy.evans', SHA2('password12343', 256), 'quincy.evans@example.com'),
(44, 'riley.collins', SHA2('password12344', 256), 'riley.collins@example.com'),
(45, 'sophia.stewart', SHA2('password12345', 256), 'sophia.stewart@example.com'),
(46, 'tristan.sanchez', SHA2('password12346', 256), 'tristan.sanchez@example.com'),
(47, 'ulysses.morris', SHA2('password12347', 256), 'ulysses.morris@example.com'),
(48, 'vanessa.rogers', SHA2('password12348', 256), 'vanessa.rogers@example.com'),
(49, 'wyatt.reed', SHA2('password12349', 256), 'wyatt.reed@example.com');


INSERT INTO currencies (currency_name, currency_description) VALUES
('USD', 'United States Dollar'),
('EUR', 'Euro'),
('GBP', 'British Pound Sterling'),
('JPY', 'Japanese Yen'),
('AUD', 'Australian Dollar'),
('CAD', 'Canadian Dollar'),
('CHF', 'Swiss Franc'),
('CNY', 'Chinese Yuan Renminbi'),
('SEK', 'Swedish Krona'),
('INR', 'Indian Rupee');


INSERT INTO exchange_rates (currency_id, exchange_rate) VALUES
(1, 1.000000),  -- USD Base Rate
(1, 1.005000),  -- USD Slight Variation
(2, 0.920000),  -- EUR
(2, 0.925000),  -- EUR Different Rate
(3, 0.770000),  -- GBP
(3, 0.765500),  -- GBP Another Rate
(4, 110.500000),  -- JPY
(4, 111.200000),  -- JPY New Rate
(5, 1.350000),  -- CAD
(5, 1.355000),  -- CAD Different Rate
(6, 1.500000),  -- AUD
(6, 1.495000),  -- AUD Another Rate
(7, 82.300000),  -- INR
(7, 83.000000),  -- INR Different Rate
(8, 6.400000),  -- CNY
(8, 6.450000),  -- CNY Another Rate
(9, 3.750000),  -- SAR
(9, 3.760000),  -- SAR Different Rate
(10, 0.930000),  -- CHF
(10, 0.935000);  -- CHF New Rate


INSERT INTO cost_types (cost_type_name) 
VALUES 
    ('Direct Cost'), 
    ('Indirect Cost');
    
    
INSERT INTO costs (cost_name, cost_type_id) VALUES 
    ('Running Cost', 1), 
    ('Project Items', 2), 
    ('Monitoring and Evaluation Cost', 2), 
    ('Support Cost', 1);
    
    
 INSERT INTO project_statuses (status_name) VALUES 
    ('In Progress'), 
    ('Completed'), 
    ('Paused');
    
    
INSERT INTO addresses (street, city, state, postal_code, country, is_deleted, deleted_at) VALUES
('2025 E Street NW', 'Washington', 'DC', '20006', 'USA', 0, NULL), -- American Red Cross
('1 Rue de Lausanne', 'Geneva', '', '1201', 'Switzerland', 0, NULL), -- International Committee of the Red Cross
('3 UN Plaza', 'New York', 'NY', '10017', 'USA', 0, NULL), -- UNICEF
('Palais des Nations', 'Geneva', '', '1211', 'Switzerland', 0, NULL), -- UNHCR (United Nations High Commissioner for Refugees)
('Rue de Montbrillant 94', 'Geneva', '', '1202', 'Switzerland', 0, NULL), -- World Food Programme
('1001 G Street NW', 'Washington', 'DC', '20001', 'USA', 0, NULL), -- Mercy Corps
('7th Floor, 125 Maiden Lane', 'New York', 'NY', '10038', 'USA', 0, NULL), -- International Rescue Committee
('2880 International Circle', 'Colorado Springs', 'CO', '80910', 'USA', 0, NULL), -- Compassion International
('Rue de Varembé 7', 'Geneva', '', '1202', 'Switzerland', 0, NULL), -- World Health Organization (WHO)
('1 Thomas Circle NW', 'Washington', 'DC', '20005', 'USA', 0, NULL), -- CARE International
-- Financiers
('500 Fifth Avenue', 'New York', 'NY', '10110', 'USA',0, NULL), -- Bill & Melinda Gates Foundation
('1818 H Street NW', 'Washington', 'DC', '20433', 'USA',0, NULL), -- World Bank
('700 19th Street NW', 'Washington', 'DC', '20431', 'USA', 0,NULL), -- International Monetary Fund (IMF)
('320 East 43rd Street', 'New York', 'NY', '10017', 'USA',0,NULL), -- Ford Foundation
('420 Fifth Avenue', 'New York', 'NY', '10018', 'USA',0, NULL); -- Rockefeller Foundation


INSERT INTO organization_statuses (Organization_status_name, is_deleted, deleted_at) VALUES
('Financier', 0, NULL),
('Partner', 0, NULL);

 
 INSERT INTO organizations (Organization_name, contact_email, contact_phone, address_id, organization_status_id, is_deleted, deleted_at) VALUES
-- Relief Organizations (Partners)
('American Red Cross', 'info@redcross.org', '+1-800-733-2767', 1, 2, 0, NULL),
('UNICEF', 'contact@unicef.org', '+1-212-326-7000', 2, 2, 0, NULL),
('World Food Programme', 'info@wfp.org', '+41-22-917-8111', 3, 2, 0, NULL),
('International Rescue Committee', 'info@rescue.org', '+1-212-551-3000', 4, 2, 0, NULL),
('Médecins Sans Frontières', 'Contact@msf.org', '+33-1-40-21-29-29', 5, 2, 0, NULL),
('MErcy Corps', 'Info@mercycorps.org', '+1-888-842-0842', 6, 2, 0, NULL),
('CARE International', 'Info@care.org', '+1-404-681-2552', 7, 2, 0, NULL),
('WOrld Health Organization', 'Contact@who.int', '+41-22-791-2111', 8, 2, 0, NULL),
('UNited Nations High Commissioner for Refugees (UNHCR)', 'Info@unhcr.org', '+41-22-739-8111', 9, 2, 0, NULL),
('COmpassion International', 'Info@compassion.com', '+1-800-336-7676', 10, 2, 0, NULL),

-- Financiers
('BIll & Melinda Gates Foundation', 'Info@gatesfoundation.org', '+1-206-709-3100', 11, 1, 0, NULL),
('WOrld Bank', 'Contact@worldbank.org', '+1-202-473-1000', 12, 1, 0, NULL),
('INternational Monetary Fund (IMF)', 'Info@imf.org', '+1-202-623-7000', 13, 1, 0, NULL),
('FOrd Foundation', 'Info@fordfoundation.org', '+1-212-573-5000', 14, 1, 0, NULL),
('ROckefeller Foundation', 'Info@rockefellerfoundation.org', '+1-212-869-8500', 15, 1, 0, NULL);
 
 
 
 
 INSERT INTO projects (
    ref_project_no, project_name, pin_code, donor_organization, funding_source, 
    implementing_partner_organization_id, address_id, fo_support_cost_percent, 
    IRW_support_cost_percent, project_description, project_status_id, approved, 
    project_period_months, project_date, project_start, project_end, 
    project_start_rev, project_end_rev, part_of, is_deleted, deleted_at
) VALUES
-- Disaster Relief Project funded by a Financier and implemented by a Partner
('DRP-2024-001', 'Emergency Flood Relief in South Asia', 'FLOOD-2024', 11, 'Bill & Melinda Gates Foundation', 
 2, 3, 5.00, 2.50, 'Providing emergency shelter, food, and medical aid to flood victims.', 1, 'Yes', 
 12, NOW(), NOW(), DATE_ADD(NOW(), INTERVAL 12 MONTH), NULL, NULL, NULL, 0, NULL),

-- Food Security Initiative
('FSI-2024-002', 'Food Assistance for Refugees', 'FOOD-2024', 12, 'World Bank', 
 3, 4, 4.50, 3.00, 'Delivering food aid to displaced populations in conflict zones.', 2, 'Yes', 
 18, NOW(), NOW(), DATE_ADD(NOW(), INTERVAL 18 MONTH), NULL, NULL, NULL, 0, NULL),

-- Healthcare and Vaccination Program
('HVP-2024-003', 'Vaccination Drive in Rural Africa', 'HEALTH-2024', 13, 'International Monetary Fund', 
 8, 5, 6.00, 2.00, 'Providing essential vaccinations and health awareness in remote areas.', 3, 'Yes', 
 24, NOW(), NOW(), DATE_ADD(NOW(), INTERVAL 24 MONTH), NULL, NULL, NULL, 0, NULL),

-- Education Support Program
('ESP-2024-004', 'Education for Displaced Children', 'EDU-2024', 14, 'Ford Foundation', 
 6, 6, 5.00, 1.50, 'Supporting schooling and educational materials for refugee children.', 3, 'Yes', 
 36, NOW(), NOW(), DATE_ADD(NOW(), INTERVAL 36 MONTH), NULL, NULL, NULL, 0, NULL),

-- Women Empowerment Project
('WEP-2024-005', 'Women’s Economic Empowerment in Crisis Areas', 'WOMEN-2024', 15, 'Rockefeller Foundation', 
 7, 7, 7.00, 2.00, 'Providing vocational training and small business support to women.', 2, 'Yes', 
 30, NOW(), NOW(), DATE_ADD(NOW(), INTERVAL 30 MONTH), NULL, NULL, NULL, 0, NULL);
 
 
 
INSERT INTO budgets (
    project_id, budget_description, budget_preparation_date, total_amount, 
    local_currency, local_currency_to_GBP, reporting_currency_SEK, 
    reporting_currency_EUR, local_exchange_rate_id, local_exchange_rate_to_GBP, 
    reporting_exchange_rate_SEK, reporting_exchange_rate_EUR, is_deleted, deleted_at
) VALUES
-- Budget for Emergency Flood Relief (USD as local currency)
(1, 'Emergency Flood Relief budget covering food, shelter, and medical aid.', NOW(), 500000.00, 
 1, 3, 9, 2, 1, 3, 9, 2, 0, NULL),

-- Budget for Food Assistance (EUR as local currency)
(2, 'Food assistance program for displaced communities.', NOW(), 750000.00, 
 2, 3, 9, 2, 3, 3, 9, 2, 0, NULL),

-- Budget for Vaccination Drive (GBP as local currency)
(3, 'Vaccination drive for rural areas including logistics and personnel.', NOW(), 1000000.00, 
 3, 3, 9, 2, 5, 3, 9, 2, 0, NULL),

-- Budget for Education Support (CAD as local currency)
(4, 'Education support for refugee children including school supplies and teacher training.', NOW(), 600000.00, 
 6, 3, 9, 2, 10, 3, 9, 2, 0, NULL),

-- Budget for Women Empowerment Project (INR as local currency)
(5, 'Vocational training and microfinance support for women in crisis zones.', NOW(), 850000.00, 
 10, 3, 9, 2, 15, 3, 9, 2, 0, NULL);
 
 
 
 
     
INSERT INTO cost_details (
    budget_id, cost_type_id, cost_id, cost_description, no_of_units, frequency_months, 
    unit_price, percentage_charging, amount_local_currency, amount_reporting_currency, 
    amount_GBP, amount_EURO, is_deleted, deleted_at
) VALUES
(1,1, 1, 'HoM', 1, 3, 175.000, 15.000, 78.750, 24.856, 1.7900, 2.155, 0, NULL),
(1,1, 1, 'Finance Manager', 1, 3, 170.00, 15.00, 76.500, 24.146, 1.739, 2.0930, 0, NULL),
(1, 1, 1, 'Programme Coordinator', 1, 3, 160.00, 15.00, 72.000, 22.726, 1.637, 1.970, 0, NULL),


(1, 1, 2, 'Consultancy', 1, 3, 25.000, 30.00, 22.500, 7.102, 511.000, 616.000, 0, NULL),

-- Vehicle Care & Maintenance (Running Cost, cost_id = 2)
(1, 1, 2, 'Vehicle Care & Maintenance',  1, 3, 14.000, 33.00, 14.000, 4.419, 318.000, 383.000, 0, NULL),

-- Office Supplies (Project Items, cost_id = 2)
(1, 1, 2, 'Office Supplies', 1, 3, 3.760, 33.00, 3.760, 1.187, 85.000, 103.000, 0, NULL),

-- Stationary (Project Items, cost_id = 2)
(1, 1, 2, 'Stationary', 1, 3, 37.600, 33.00, 3.760, 1.187, 85.000, 103.000, 0, NULL),

-- Food & Catering (Project Items, cost_id = 2)
(1, 1, 2, 'Food & Catering', 1, 3, 37.600, 33.00, 3.760, 1.187, 85.000, 103.000, 0, NULL),

-- External Audit Fees (Support Cost, cost_id = 2)
(1, 1, 2, 'External Audit Fees', 1, 1, 200.000, 100.00, 200.000, 63.127, 4.546, 5.473, 0, NULL);




INSERT INTO documents (
    employee_id, document_name, document_path, project_id, is_deleted, deleted_at
) VALUES
-- For Emergency Flood Relief in South Asia (DRP-2024-001)
(1, 'Flood Relief Budget Plan', 'path/to/documents/flood_relief_budget_plan.pdf', 1, 0, NULL),
(2, 'Project Implementation Plan', 'path/to/documents/project_implementation_plan.pdf', 1, 0, NULL),

-- For Food Assistance for Refugees (FSI-2024-002)
(3, 'Food Distribution Report', 'path/to/documents/food_distribution_report.pdf', 2, 0, NULL),
(4, 'Grant Application Form', 'path/to/documents/grant_application_form.pdf', 2, 0, NULL),

-- For Vaccination Drive in Rural Africa (HVP-2024-003)
(5, 'Vaccination Rollout Strategy', 'path/to/documents/vaccination_rollout_strategy.pdf', 3, 0, NULL),
(6, 'Vaccine Inventory Report', 'path/to/documents/vaccine_inventory_report.pdf', 3, 0, NULL),

-- For Education for Displaced Children (ESP-2024-004)
(7, 'Curriculum Development Plan', 'path/to/documents/curriculum_development_plan.pdf', 4, 0, NULL),
(8, 'Resource Allocation Overview', 'path/to/documents/resource_allocation_overview.pdf', 4, 0, NULL),

-- For Women’s Economic Empowerment in Crisis Areas (WEP-2024-005)
(9, 'Women Empowerment Training Materials', 'path/to/documents/women_empowerment_training_materials.pdf', 5, 0, NULL),
(10, 'Project Monitoring and Evaluation Report', 'path/to/documents/project_monitoring_and_evaluation_report.pdf', 5, 0, NULL);


INSERT INTO memos (message, position_id, project_id, memo_date, is_deleted, deleted_at) VALUES
('Emergency Flood Relief in South Asia has been successfully launched. Please coordinate with local teams.', 1, 1, '2024-02-02', 0, NULL),
('Please prepare the necessary documentation for the upcoming Food Assistance for Refugees project.', 2, 2, '2024-02-03', 0, NULL),
('The Healthcare and Vaccination Program is scheduled for the next quarter. All preparations should be ready by then.', 3, 3, '2024-02-04', 0, NULL),
('Ensure that the education support materials are delivered on time for the Education for Displaced Children project.', 1, 4, '2024-02-05', 0, NULL),
('Women’s Economic Empowerment in Crisis Areas requires urgent updates on the funding status. Please check with the finance team.', 2, 5, '2024-02-06', 0, NULL);


INSERT INTO bank_details (
    organization_id, bank_name, account_number, branch_name, swift_code, is_deleted, deleted_at
) VALUES
(1, 'Bank of America', '1234567890', 'New York Branch', 'BOFAUS3N', 0, NULL),
(2, 'Citibank', '9876543210', 'Los Angeles Branch', 'CITIUS33', 0, NULL),
(3, 'Chase Bank', '1122334455', 'Chicago Branch', 'JPMUS33', 0, NULL),
(4, 'Wells Fargo', '5566778899', 'San Francisco Branch', 'WFBIUS6S', 0, NULL),
(5, 'HSBC', '9988776655', 'Miami Branch', 'HSBCUS33', 0, NULL);

INSERT INTO locations (location_name, geo_coordinates, address_id, is_deleted, deleted_at)
VALUES
('South Asia Emergency Relief Hub', ST_GeomFromText('POINT(77.1025 28.7041)'), 1, 0, NULL),
('Refugee Support Center in Europe', ST_GeomFromText('POINT(13.4050 52.5200)'), 2, 0, NULL),
('Health Center in Africa', ST_GeomFromText('POINT(34.5085 -1.9703)'), 3, 0, NULL),
('Educational Facility for Refugees', ST_GeomFromText('POINT(25.276987 55.296249)'), 4, 0, NULL),
('Vocational Training Center for Women', ST_GeomFromText('POINT(40.7128 -74.0060)'), 5, 0, NULL);



INSERT INTO partners (project_id, organization_id, partner_organization_id, is_deleted, deleted_at) VALUES
(1, 2, 3, 0, NULL),  -- Partner organization for "Emergency Flood Relief in South Asia"
(2, 12, 13, 0, NULL),  -- Partner organization for "Food Assistance for Refugees"
(3, 13, 8, 0, NULL),  -- Partner organization for "Vaccination Drive in Rural Africa"
(4, 14, 6, 0, NULL),  -- Partner organization for "Education for Displaced Children"
(5, 15, 7, 0, NULL);  -- Partner organization for "Women’s Economic Empowerment in Crisis Areas"



INSERT INTO employee_project (
    project_participant_id, project_id, employee_id, position_id, is_deleted, deleted_at
) VALUES
-- Participant for Emergency Flood Relief in South Asia (Project 1)
(1, 1, 1, 1, 0, NULL),  -- Alice Johnson (Project Manager)
(2, 1, 2, 2, 0, NULL),  -- Bob Smith (Project Assistant)

-- Participant for Food Assistance for Refugees (Project 2)
(3, 2, 3, 1, 0, NULL),  -- Charlie Brown (Project Manager)
(4, 2, 4, 2, 0, NULL),  -- David Williams (Project Assistant)

-- Participant for Vaccination Drive in Rural Africa (Project 3)
(5, 3, 5, 1, 0, NULL),  -- Emma Jones (Project Manager)
(6, 3, 6, 2, 0, NULL),  -- Frank Miller (Project Assistant)

-- Participant for Education for Displaced Children (Project 4)
(7, 4, 7, 1, 0, NULL),  -- Grace Davis (Project Manager)
(8, 4, 8, 2, 0, NULL),  -- Henry Wilson (Project Assistant)

-- Participant for Women’s Economic Empowerment in Crisis Areas (Project 5)
(9, 5, 9, 1, 0, NULL),  -- Isabella Moore (Project Manager)
(10, 5, 10, 2, 0, NULL); -- Jack Taylor (Project Assistant)


INSERT INTO transaction_statuses (transaction_status_name) VALUES
('Payment received'),
('Payment made'),
('Debiting'),
('Cancellation');




INSERT INTO transactions (
    organization_id, project_id, financier_organization_id, transaction_status_id, 
    applied_for_amount, applied_for_exchange_rate_id, first_share_SEK_amount, 
    first_sahre_amount, approved_amount, approved_amount_currency_id, 
    approved_amount_exchange_rate_id, own_contribution, second_share_amount_SEK, 
    second_share_amount, date_planned, OK
) VALUES
(1, 1, 2, 1, 1000000, 1, 100000, 80000, 900000, 2, 1, 'Yes', 150000, 120000, NOW(), 'Yes'),
(2, 2, 3, 2, 1500000, 2, 140000, 110000, 1300000, 3, 2, 'No', 200000, 160000, NOW(), 'Yes'),
(3, 3, 4, 3, 500000, 3, 45000, 35000, 400000, 4, 3, 'Yes', 75000, 60000, NOW(), 'No'),
(4, 4, 5, 4, 750000, 4, 70000, 56000, 670000, 5, 4, 'No', 100000, 80000, NOW(), 'Yes');



INSERT INTO signature_statuses (signature_status_name) 
VALUES 
    ('Reviewed'),
    ('Ordered'),
    ('Certified'),
    ('Booked');
    
    
INSERT INTO payment_orders (
    transaction_id, payment_order_date, number_of_transactions, 
    payment_order_description, amount, total_amount, message, pin_code
) VALUES
(1, NOW(), 1, 'Emergency shelter funding - Phase 1', 80000, 100000, 'Approved for disbursement', 'RP1234'),
(2, NOW(), 1, 'Medical aid supplies procurement', 110000, 140000, 'Funds allocated', 'RP5678'),
(3, NOW(), 1, 'Food relief distribution initiative', 35000, 45000, 'Pending approval', 'RP9101'),
(4, NOW(), 1, 'Clean water access project - Implementation', 56000, 70000, 'Payment processed', 'RP1121');


INSERT INTO signatures (
    signature_status_id, employee_id, payment_order_id, signature, signature_date
) VALUES
(1, 1, 1, 'AliceJohnsonSignature', NOW()),  -- Reviewed - Emergency shelter funding
(2, 5, 2, 'EmmaJonesSignature', NOW()),     -- Ordered - Medical aid supplies
(3, 10, 3, 'JackTaylorSignature', NOW()),   -- Certified - Food relief distribution
(4, 15, 4, 'OliviaHarrisSignature', NOW()); -- Booked - Clean water access project


INSERT INTO recipients (organization_id, payment_order_id) VALUES
(1, 1), -- American Red Cross receives payment for Emergency Shelter Funding
(2, 2), -- UNICEF receives payment for Medical Aid Supplies
(3, 3), -- World Food Programme receives payment for Food Relief Distribution
(4, 4); -- International Rescue Committee receives payment for Clean Water Access