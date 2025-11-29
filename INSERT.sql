USE HRMS;

GO
INSERT INTO Currency (CurrencyCode,
                      CurrencyName,
                      ExchangeRate,
                      CreatedDate,
                      LastUpdated)
VALUES ('USD', 'US Dollar', 1.0000, GETDATE(), GETDATE()),
       ('EUR', 'Euro', 0.9200, GETDATE(), GETDATE()),
       ('GBP',
        'British Pound',
        0.7900,
        GETDATE(),
        GETDATE()),
       ('EGP',
        'Egyptian Pound',
        30.9000,
        GETDATE(),
        GETDATE()),
       ('AED',
        'UAE Dirham',
        3.6700,
        GETDATE(),
        GETDATE());

INSERT INTO TaxForm (jurisdiction, validity_period, form_content)
VALUES ('Federal',
        '2025-01-01 to 2025-12-31',
        'Standard federal tax withholding rules'),
       ('State of California',
        '2025-01-01 to 2025-12-31',
        'California state tax regulations'),
       ('European Union',
        '2025-01-01 to 2025-12-31',
        'EU tax compliance framework'),
       ('Egypt',
        '2025-01-01 to 2025-12-31',
        'Egyptian tax authority regulations');

INSERT INTO Position (position_title, responsibilities, STATUS)
VALUES ('CEO',
        'Chief Executive Officer - Overall company strategy',
        'Active'),
       ('CTO',
        'Chief Technology Officer - Technology direction',
        'Active'),
       ('HR Manager',
        'Human Resources Management',
        'Active'),
       ('Software Engineer',
        'Software development and maintenance',
        'Active'),
       ('Senior Developer',
        'Lead development projects',
        'Active'),
       ('Junior Developer',
        'Assist in development tasks',
        'Active'),
       ('System Administrator',
        'Manage IT infrastructure',
        'Active'),
       ('Payroll Specialist',
        'Process payroll and compensation',
        'Active'),
       ('HR Administrator',
        'Handle HR operations',
        'Active'),
       ('Line Manager',
        'Manage team operations',
        'Active'),
       ('Consultant',
        'Provide expert consulting services',
        'Active'),
       ('Intern',
        'Learn and assist in projects',
        'Active');

INSERT INTO Department (department_name, purpose, department_head_id)
VALUES ('Executive', 'Executive leadership', NULL),
       ('Human Resources',
        'Employee management and welfare',
        NULL),
       ('Engineering', 'Software development', NULL),
       ('Finance', 'Financial operations', NULL),
       ('Operations',
        'Daily operations management',
        NULL),
       ('IT', 'Information technology services', NULL);

INSERT INTO Role (role_name, purpose)
VALUES ('System Administrator',
        'Full system access and configuration'),
       ('HR Administrator',
        'HR operations and employee management'),
       ('Payroll Officer',
        'Payroll processing and compensation'),
       ('Line Manager', 'Team management and operations'),
       ('Employee', 'Standard employee access'),
       ('Consultant', 'External consultant access'),
       ('Intern', 'Internship program participant');

INSERT INTO RolePermission (role_id, permission_name, allowed_action)
VALUES (1, 'System Configuration', 'Full Access'),
       (1, 'User Management', 'Create, Update, Delete'),
       (1, 'Audit Logs', 'View All'),
       (2, 'Employee Records', 'Create, Update, View'),
       (2, 'Leave Management', 'Approve, Reject'),
       (2, 'Contract Management', 'Create, Update'),
       (3, 'Payroll Processing', 'Execute, Modify'),
       (3, 'Salary Configuration', 'Update'),
       (3, 'Tax Management', 'Configure'),
       (4, 'Team Management', 'View, Assign'),
       (4, 'Leave Approval', 'Approve, Reject'),
       (4, 'Attendance Review', 'View, Modify'),
       (5, 'Profile', 'View, Update Own'),
       (5, 'Leave Request', 'Submit, View Own'),
       (5, 'Attendance', 'Clock In/Out');

INSERT INTO Insurance (TYPE, contribution_rate, coverage)
VALUES ('Health Insurance',
        5.50,
        'Comprehensive medical coverage including hospitalization'),
       ('Life Insurance',
        2.00,
        'Life coverage up to 5x annual salary'),
       ('Accident Coverage',
        1.50,
        'Workplace and commute accident coverage'),
       ('Dental Insurance',
        1.00,
        'Dental care and orthodontics'),
       ('Vision Insurance',
        0.75,
        'Eye care and corrective lenses');

INSERT INTO PayGrade (grade_name, min_salary, max_salary)
VALUES ('Entry Level', 30000.00, 50000.00),
       ('Junior', 50000.00, 75000.00),
       ('Mid Level', 75000.00, 100000.00),
       ('Senior', 100000.00, 150000.00),
       ('Lead', 150000.00, 200000.00),
       ('Executive', 200000.00, 500000.00);

INSERT INTO SalaryType (TYPE, payment_frequency, currency)
VALUES
('Monthly', 'Monthly', 'US Dollar'),
('Hourly', 'Bi-Weekly', 'US Dollar'),
('Contract', 'Milestone-Based', 'US Dollar'),
('Monthly', 'Monthly', 'Euro'),
('Hourly', 'Weekly', 'British Pound'),
('Monthly', 'Monthly', 'Egyptian Pound'),
('Hourly', 'Bi-Weekly', 'Egyptian Pound');

INSERT INTO HourlySalaryType (salary_type_id, hourly_rate, max_monthly_hours)
VALUES (2, 25.00, 160),
       (5, 30.00, 160);

INSERT INTO MonthlySalaryType (salary_type_id, tax_rule, contribution_scheme)
VALUES (1,
        'Standard Income Tax - 15%',
        'Social Security 6.2%, Medicare 1.45%'),
       (4,
        'EU Tax Directive - 20%',
        'Pension 5%, Health 3%');

INSERT INTO ContractSalaryType (salary_type_id,
                                contract_value,
                                installment_details)
VALUES (3, 100000.00, '4 equal quarterly payments');

INSERT INTO Contract (TYPE, start_date, end_date, current_state)
VALUES
('Full-Time', '2024-01-15', NULL, 'Active'),
('Full-Time', '2024-03-01', NULL, 'Active'),
('Full-Time', '2024-02-10', NULL, 'Active'),
('Part-Time', '2024-06-01', '2025-06-01', 'Active'),
('Consultant', '2024-09-01', '2025-03-01', 'Active'),
('Internship', '2024-07-01', '2024-12-31', 'Active'),
('Full-Time', '2023-01-01', NULL, 'Active'),
('Full-Time', '2023-06-15', NULL, 'Active'),
('Full-Time', '2024-04-20', NULL, 'Active'),
('Part-Time', '2024-08-01', '2025-08-01', 'Active');

INSERT INTO FullTimeContract (contract_id,
                              leave_entitlement,
                              insurance_eligibility,
                              weekly_working_hours)
VALUES (1, 30, 'Full Health and Life Coverage', 40),
       (2, 25, 'Full Health and Life Coverage', 40),
       (3, 30, 'Full Health and Life Coverage', 40),
       (7, 30, 'Full Health and Life Coverage', 40),
       (8, 28, 'Full Health and Life Coverage', 40),
       (9, 30, 'Full Health and Life Coverage', 40);

INSERT INTO PartTimeContract (contract_id, working_hours, hourly_rate)
VALUES (4, 80, 25.00),
       (10, 100, 28.00);

INSERT INTO ConsultantContract (contract_id,
                                project_scope,
                                fees,
                                payment_schedule)
VALUES (5,
        'ERP System Implementation and Training',
        100000.00,
        'Quarterly - 25% per milestone');

INSERT INTO InternshipContract (contract_id,
                                mentoring,
                                evaluation,
                                stipend_related)
VALUES (6,
        'Assigned to Senior Developer',
        'Monthly performance reviews',
        800.00);

INSERT INTO Employee (
    first_name, last_name, national_id, date_of_birth, country_of_birth,
    phone, email, address,
    emergency_contact_name, emergency_contact_phone, relationship,
    biography, profile_image, employment_progress, account_status,
    employment_status, hire_date, is_active, profile_completion,
    department_id, position_id, manager_id, contract_id,
    tax_form_id, salary_type_id, pay_grade
) VALUES
('Ahmed', 'Hassan', '29203151201234', '1992-03-15', 'Egypt',
 '+20 10 0123 4567', 'ahmed.hassan@innovateegypt.com', '15 Tahrir Square, Downtown, Cairo',
 'Fatma Hassan', '+20 12 1234 5678', 'Mother',
 'Senior software engineer with 7 years in fintech and e-government systems in Egypt.',
 '/profiles/ahmed_hassan.jpg', 'Completed', 'Active',
 'Full-Time', '2023-08-10', 1, 100,
 3, 5, 5, 3,
 4, 6, 4),
('Mariam', 'Fouad', '29511051302345', '1995-11-05', 'Egypt',
 '+20 11 9876 5432', 'mariam.fouad@nexatech-eg.com', '45 Mohamed Kamel St., Nasr City, Cairo',
 'Ali Fouad', '+20 10 5555 1234', 'Father',
 'HR specialist with MA in Organizational Psychology from AUC. Focused on MENA labor compliance.',
 '/profiles/mariam_fouad.jpg', 'Completed', 'Active',
 'Full-Time', '2024-01-15', 1, 95,
 2, 9, 2, 8,
 4, 6, 3),
('Youssef', 'Mahmoud', '29904221403456', '1999-04-22', 'Egypt',
 '+20 12 3456 7890', 'youssef.mahmoud@techsolutions.eg', 'Building 8, New Cairo City, Cairo',
 'Nour Mahmoud', '+20 15 0123 4567', 'Sister',
 'Graduated from Cairo University, Computer Engineering. Interned at Vodafone Egypt before joining.',
 '/profiles/youssef_mahmoud.jpg', 'In Progress', 'Active',
 'Full-Time', '2024-07-01', 1, 80,
 3, 6, 5, 9,
 4, 6, 2),
('Salma', 'Ibrahim', '28806141504567', '1988-06-14', 'Egypt',
 '+20 10 8765 4321', 'salma.ibrahim@payrollplus.eg', '22 Cleopatra St., Smouha, Alexandria',
 'Omar Ibrahim', '+20 11 1111 2222', 'Husband',
 'Certified Payroll Professional (CPP) with 6 years in multi-currency payroll for Egyptian multinationals.',
 '/profiles/salma_ibrahim.jpg', 'Completed', 'Active',
 'Full-Time', '2023-11-01', 1, 100,
 4, 8, 4, 2,
 4, 6, 4),
('Karim', 'Ali', '28507181605678', '1985-07-18', 'Egypt',
 '+20 10 2222 3333', 'karim.ali@innovateegypt.com', '10 Ibn Battuta Mall, 6th October City',
 'Laila Ali', '+20 11 4444 5555', 'Wife',
 'Engineering team lead with experience in agile delivery for banking clients in Egypt and KSA.',
 '/profiles/karim_ali.jpg', 'Completed', 'Active',
 'Full-Time', '2023-06-01', 1, 100,
 3, 5, 1, 5,
 4, 6, 5),
('Nour', 'Sayed', '30101011706789', '2001-01-01', 'Egypt',
 '+20 12 6666 7777', 'nour.sayed@techsolutions.eg', 'Villa 22, Rehab City, Cairo',
 'Ahmed Sayed', '+20 10 9999 8888', 'Brother',
 'Computer Science student. Completed summer internship and hired full-time.',
 '/profiles/nour_sayed.jpg', 'In Progress', 'Active',
 'Full-Time', '2024-09-01', 1, 70,
 3, 6, 5, 4,
 4, 7, 2),
('Tarek', 'Kamal', '28009121807890', '1980-09-12', 'Egypt',
 '+20 11 7777 8888', 'tarek.kamal@nexatech-eg.com', '7 Corniche El Nil, Zamalek, Cairo',
 'Hana Kamal', '+20 12 0000 1111', 'Wife',
 'IT infrastructure expert with 12 years in cloud and cybersecurity for Egyptian enterprises.',
 '/profiles/tarek_kamal.jpg', 'Completed', 'Active',
 'Full-Time', '2023-01-15', 1, 100,
 6, 7, 1, 1,
 4, 6, 5),
('Lamia', 'Abbas', '27512051908901', '1975-12-05', 'Egypt',
 '+20 10 3333 4444', 'lamia.abbas@consultegypt.com', '5 Gezira Island, Cairo',
 'Hossam Abbas', '+20 11 6666 9999', 'Husband',
 'ERP consultant with 15 years implementing SAP and Oracle for Egyptian ministries and banks.',
 '/profiles/lamia_abbas.jpg', 'Completed', 'Active',
 'Contract', '2024-02-01', 1, 100,
 5, 11, NULL, 5,
 4, 3, 6),
('Aya', 'Hossam', '29708302009012', '1997-08-30', 'Egypt',
 '+20 12 8888 9999', 'aya.hossam@nexatech-eg.com', '30 New Cairo Road, Cairo',
 'Samir Hossam', '+20 10 7777 0000', 'Father',
 'HR operations specialist supporting 200+ employees across Cairo and Alexandria offices.',
 '/profiles/aya_hossam.jpg', 'Completed', 'Active',
 'Full-Time', '2024-03-01', 1, 90,
 2, 9, 2, 10,
 4, 6, 3),
('Omar', 'Mahmoud', '30005142110123', '2000-05-14', 'Egypt',
 '+20 15 1111 2222', 'omar.m@techsolutions.eg', '18 Heliopolis, Cairo',
 'Sara Mahmoud', '+20 12 3333 4444', 'Mother',
 'Part-time developer while completing BSc in Computer Science at Cairo University.',
 '/profiles/omar_mahmoud.jpg', 'In Progress', 'Active',
 'Part-Time', '2024-06-01', 1, 75,
 3, 6, 5, 6,
 4, 7, 1);

UPDATE
    Department
SET department_head_id = 1
WHERE department_id = 1;

UPDATE
    Department
SET department_head_id = 2
WHERE department_id = 2;

UPDATE
    Department
SET department_head_id = 5
WHERE department_id = 3;

UPDATE
    Department
SET department_head_id = 4
WHERE department_id = 4;

INSERT INTO HRAdministrator (employee_id,
                             approval_level,
                             record_access_scope,
                             document_validation_rights)
VALUES (2,
        'Organization-Wide',
        'All Employee Records, Contracts, Leave',
        'Approve Contracts, Verify Certifications, Validate Attendance'),
       (10,
        'Department-Level',
        'Department Employee Records, Leave Requests',
        'Verify Certifications, Validate Attendance');

INSERT INTO SystemAdministrator (employee_id,
                                 system_privilege_level,
                                 configurable_fields,
                                 audit_visibility_scope)
VALUES (3,
        'Super Admin',
        'All System Fields, Security Settings, Integrations',
        'Full System Logs, Security Audit');

INSERT INTO PayrollSpecialist (employee_id, assigned_region, processing_frequency, last_processed_period)
VALUES (4, 'Egypt & MENA', 'Monthly', 'October 2025');

INSERT INTO LineManager (employee_id,
                         team_size,
                         supervised_departments,
                         approval_limit)
VALUES (5, 5, 'Engineering', 'Team-Level Approval'),
       (2, 8, 'Human Resources', 'Full Department Authority');

INSERT INTO Skill (skill_name, description)
VALUES ('Python Programming',
        'Python development and scripting'),
       ('SQL Database',
        'Database design and optimization'),
       ('Project Management',
        'Agile and waterfall methodologies'),
       ('JavaScript', 'Frontend and backend JavaScript'),
       ('HR Compliance',
        'Employment law and regulations'),
       ('Payroll Processing',
        'Multi-state payroll expertise'),
       ('System Architecture',
        'Cloud and on-premise solutions'),
       ('Leadership', 'Team management and mentoring'),
       ('Communication',
        'Effective business communication'),
       ('Data Analysis',
        'Business intelligence and reporting');

INSERT INTO Employee_Skill (employee_id, skill_id, proficiency_level)
VALUES (1, 3, 'Expert'),
       (1, 8, 'Expert'),
       (2, 5, 'Expert'),
       (2, 9, 'Advanced'),
       (3, 7, 'Expert'),
       (3, 2, 'Advanced'),
       (4, 6, 'Expert'),
       (4, 10, 'Advanced'),
       (5, 3, 'Advanced'),
       (5, 8, 'Advanced'),
       (6, 1, 'Advanced'),
       (6, 4, 'Advanced'),
       (7, 1, 'Intermediate'),
       (7, 4, 'Intermediate'),
       (9, 1, 'Beginner'),
       (9, 4, 'Beginner');

INSERT INTO Verification (verification_type,
                          issuer,
                          issue_date,
                          expiry_period)
VALUES ('PMP Certification',
        'PMI',
        '2023-01-15',
        '2026-01-15'),
       ('AWS Solutions Architect',
        'Amazon',
        '2022-06-20',
        '2025-06-20'),
       ('PHR Certification',
        'HRCI',
        '2021-03-10',
        '2024-03-10'),
       ('CPP Certification',
        'APA',
        '2022-09-05',
        '2025-09-05'),
       ('CISSP', 'ISC2', '2023-04-12', '2026-04-12'),
       ('Scrum Master',
        'Scrum Alliance',
        '2023-07-01',
        '2025-07-01');

INSERT INTO Employee_Verification (employee_id, verification_id)
VALUES (1, 1),
       (2, 3),
       (3, 5),
       (4, 4),
       (5, 1),
       (5, 6),
       (6, 6);

INSERT INTO Employee_Role (employee_id, role_id, assigned_date)
VALUES (1, 5, '2023-01-01'),
       (2, 2, '2023-06-15'),
       (2, 4, '2023-06-15'),
       (3, 1, '2024-01-15'),
       (4, 3, '2024-03-01'),
       (5, 4, '2024-02-10'),
       (6, 5, '2024-04-20'),
       (7, 5, '2024-06-01'),
       (8, 6, '2024-09-01'),
       (9, 7, '2024-07-01'),
       (10, 2, '2024-08-01');

INSERT INTO Leave (leave_type, leave_description)
VALUES ('Vacation', 'Annual paid vacation leave'),
       ('Sick', 'Medical leave for illness or injury'),
       ('Probation', 'Leave during probation period'),
       ('Holiday', 'Public and company holidays'),
       ('Bereavement', 'Leave for family bereavement'),
       ('Maternity', 'Maternity leave for mothers'),
       ('Paternity', 'Paternity leave for fathers');

INSERT INTO VacationLeave (leave_id, carry_over_days, approving_manager)
VALUES (1, 5, 'Direct Line Manager');

INSERT INTO SickLeave (leave_id, medical_cert_required, physician_id)
VALUES (2, 1, 'PHY-001');

INSERT INTO ProbationLeave (leave_id,
                            eligibility_start_date,
                            probation_period)
VALUES (3, '2025-01-01', 90);

INSERT INTO HolidayLeave (leave_id,
                          holiday_name,
                          official_recognition,
                          regional_scope)
VALUES (4, 'New Year', 1, 'Nationwide');

INSERT INTO LeavePolicy (name,
                         purpose,
                         eligibility_rules,
                         notice_period,
                         special_leave_type,
                         reset_on_new_year,
                         leave_type_id)
VALUES ('Standard Vacation Policy',
        'Annual vacation entitlement',
        'All full-time employees after 3 months',
        14,
        NULL,
        1,
        1),
       ('Sick Leave Policy',
        'Medical leave framework',
        'All employees immediately',
        0,
        NULL,
        0,
        2),
       ('Holiday Policy',
        'Company holidays schedule',
        'All employees',
        0,
        NULL,
        0,
        4),
       ('Bereavement Policy',
        'Family emergency leave',
        'All employees',
        0,
        'Bereavement',
        0,
        5);

INSERT INTO LeaveRequest (employee_id,
                          leave_id,
                          justification,
                          duration,
                          approval_timing,
                          STATUS)
VALUES (6,
        1,
        'Summer vacation with family',
        10,
        '2025-05-15 10:30:00',
        'Approved'),
       (7,
        2,
        'Flu symptoms and fever',
        3,
        NULL,
        'Pending'),
       (9, 1, 'Personal travel', 5, NULL, 'Rejected'),
       (6,
        2,
        'Medical checkup',
        1,
        '2025-06-20 14:00:00',
        'Approved'),
       (10,
        1,
        'Holiday break',
        7,
        '2025-08-10 09:00:00',
        'Approved');

INSERT INTO LeaveEntitlement (employee_id, leave_type_id, entitlement)
VALUES (1, 1, 30.00),
       (2, 1, 28.00),
       (3, 1, 25.00),
       (4, 1, 25.00),
       (5, 1, 30.00),
       (6, 1, 25.00),
       (7, 1, 15.00),
       (9, 1, 10.00),
       (10, 1, 22.00),
       (1, 2, 15.00),
       (2, 2, 15.00),
       (3, 2, 15.00),
       (4, 2, 15.00),
       (5, 2, 15.00),
       (6, 2, 15.00),
       (7, 2, 10.00),
       (9, 2, 5.00),
       (10, 2, 15.00);

INSERT INTO LeaveDocument (leave_request_id, file_path, uploaded_at)
VALUES (2,
        '/documents/leave/medical_cert_001.pdf',
        GETDATE()),
       (4,
        '/documents/leave/medical_cert_002.pdf',
        GETDATE());

INSERT INTO ShiftSchedule (name,
                           TYPE,
                           start_time,
                           end_time,
                           break_duration,
                           shift_date,
                           STATUS)
VALUES ('Morning Shift',
        'Normal',
        '08:00:00',
        '16:00:00',
        60,
        NULL,
        'Active'),
       ('Evening Shift',
        'Normal',
        '16:00:00',
        '00:00:00',
        60,
        NULL,
        'Active'),
       ('Night Shift',
        'Overnight',
        '00:00:00',
        '08:00:00',
        60,
        NULL,
        'Active'),
       ('Core Hours',
        'Flex',
        '09:00:00',
        '17:00:00',
        60,
        NULL,
        'Active'),
       ('Split Shift',
        'Split',
        '08:00:00',
        '20:00:00',
        240,
        NULL,
        'Active');

INSERT INTO Exception (name, category, date, STATUS)
VALUES
('New Year', 'Holiday', '2025-01-01', 'Active'),
('Coptic Christmas', 'Holiday', '2025-01-07', 'Active'),
('Sham El Nessim', 'Holiday', '2025-04-21', 'Active'),
('Eid al-Fitr', 'Holiday', '2025-03-31', 'Active'),
('Revolution Day', 'Holiday', '2025-07-23', 'Active'),
('October War Victory', 'Holiday', '2025-10-06', 'Active'),
('Eid al-Adha', 'Holiday', '2025-06-06', 'Active'),
('System Maintenance', 'Special', '2025-11-30', 'Active');

INSERT INTO ShiftAssignment (employee_id,
                             shift_id,
                             start_date,
                             end_date,
                             STATUS,
                             exception_id)
VALUES (3, 1, '2024-01-15', NULL, 'Active', NULL),
       (4, 1, '2024-03-01', NULL, 'Active', NULL),
       (5, 4, '2024-02-10', NULL, 'Active', NULL),
       (6, 1, '2024-04-20', NULL, 'Active', NULL),
       (7, 2, '2024-06-01', '2025-06-01', 'Active', NULL),
       (9, 1, '2024-07-01', '2024-12-31', 'Active', NULL),
       (10, 1, '2024-08-01', NULL, 'Active', NULL);

INSERT INTO ShiftCycle (cycle_name, description)
VALUES ('Rotational Weekly',
        'Weekly rotation between morning, evening, and night'),
       ('Two Week Rotation', 'Bi-weekly shift rotation'),
       ('Monthly Rotation', 'Monthly shift pattern');

INSERT INTO ShiftCycleAssignment (cycle_id, shift_id, order_number)
VALUES (1, 1, 1),
       (1, 2, 2),
       (1, 3, 3),
       (2, 1, 1),
       (2, 2, 2);

INSERT INTO Employee_Exception (employee_id, exception_id)
VALUES (1, 1),
       (2, 1),
       (3, 1),
       (4, 1),
       (5, 1),
       (6, 1),
       (1, 2),
       (2, 2),
       (3, 2);

INSERT INTO Attendance (employee_id,
                        shift_id,
                        entry_time,
                        exit_time,
                        duration,
                        login_method,
                        logout_method,
                        exception_id)
VALUES (3,
        1,
        '2025-11-20 08:05:00',
        '2025-11-20 16:10:00',
        485,
        'Fingerprint',
        'Fingerprint',
        NULL),
       (4,
        1,
        '2025-11-20 08:00:00',
        '2025-11-20 16:05:00',
        485,
        'ID Card',
        'ID Card',
        NULL),
       (5,
        4,
        '2025-11-20 09:15:00',
        '2025-11-20 17:30:00',
        495,
        'Mobile App',
        'Mobile App',
        NULL),
       (6,
        1,
        '2025-11-20 08:10:00',
        '2025-11-20 16:00:00',
        470,
        'Fingerprint',
        'Fingerprint',
        NULL),
       (10,
        1,
        '2025-11-20 07:55:00',
        '2025-11-20 16:00:00',
        485,
        'ID Card',
        'ID Card',
        NULL),
       (3,
        1,
        '2025-11-21 08:00:00',
        '2025-11-21 16:05:00',
        485,
        'Fingerprint',
        'Fingerprint',
        NULL),
       (4,
        1,
        '2025-11-21 08:20:00',
        '2025-11-21 16:00:00',
        460,
        'ID Card',
        'ID Card',
        NULL),
       (6,
        1,
        '2025-11-21 08:00:00',
        NULL,
        NULL,
        'Fingerprint',
        NULL,
        NULL);

INSERT INTO AttendanceLog (attendance_id, actor, timestamp, reason)
VALUES (7,
        5,
        GETDATE(),
        'Late arrival - traffic jam approved by manager'),
       (8,
        5,
        GETDATE(),
        'Missed clock out - system corrected by manager');

INSERT INTO AttendanceCorrectionRequest (employee_id,
                                         date,
                                         correction_type,
                                         reason,
                                         STATUS,
                                         recorded_by)
VALUES (6,
        '2025-11-21',
        'Missed Clock Out',
        'Forgot to clock out, left at 16:00',
        'Pending',
        6),
       (4,
        '2025-11-21',
        'Late Arrival',
        'Traffic due to accident on highway',
        'Approved',
        4);

INSERT INTO Device (device_type,
                    terminal_id,
                    latitude,
                    longitude,
                    employee_id)
VALUES ('Biometric Terminal',
        'TERM-001',
        30.0444196,
        31.2357116,
        NULL),
       ('Biometric Terminal',
        'TERM-002',
        30.0444300,
        31.2357200,
        NULL),
       ('Mobile App', 'MOB-APP-001', NULL, NULL, 5),
       ('Web Portal', 'WEB-001', NULL, NULL, NULL);

INSERT INTO AttendanceSource (attendance_id,
                              device_id,
                              source_type,
                              latitude,
                              longitude,
                              recorded_at)
VALUES (1,
        1,
        'Biometric',
        30.0444196,
        31.2357116,
        '2025-11-20 08:05:00'),
       (2,
        2,
        'Biometric',
        30.0444300,
        31.2357200,
        '2025-11-20 08:00:00'),
       (3,
        3,
        'Mobile',
        30.0500000,
        31.2400000,
        '2025-11-20 09:15:00'),
       (4,
        1,
        'Biometric',
        30.0444196,
        31.2357116,
        '2025-11-20 08:10:00');

INSERT INTO Payroll (employee_id,
                     taxes,
                     period_start,
                     period_end,
                     base_amount,
                     adjustments,
                     contributions,
                     actual_pay,
                     net_salary,
                     payment_date)
VALUES (1,
        15000.00,
        '2025-10-01',
        '2025-10-31',
        120000.00,
        5000.00,
        8000.00,
        125000.00,
        102000.00,
        '2025-11-05'),
       (2,
        6000.00,
        '2025-10-01',
        '2025-10-31',
        50000.00,
        2000.00,
        3500.00,
        52000.00,
        42500.00,
        '2025-11-05'),
       (3,
        5250.00,
        '2025-10-01',
        '2025-10-31',
        45000.00,
        1500.00,
        3150.00,
        46500.00,
        38100.00,
        '2025-11-05'),
       (4,
        5250.00,
        '2025-10-01',
        '2025-10-31',
        45000.00,
        0.00,
        3150.00,
        45000.00,
        36600.00,
        '2025-11-05'),
       (5,
        7500.00,
        '2025-10-01',
        '2025-10-31',
        60000.00,
        3000.00,
        4200.00,
        63000.00,
        51300.00,
        '2025-11-05'),
       (6,
        6000.00,
        '2025-10-01',
        '2025-10-31',
        50000.00,
        1000.00,
        3500.00,
        51000.00,
        41500.00,
        '2025-11-05'),
       (10,
        4500.00,
        '2025-10-01',
        '2025-10-31',
        40000.00,
        500.00,
        2800.00,
        40500.00,
        33200.00,
        '2025-11-05');

INSERT INTO AllowanceDeduction (payroll_id, employee_id, TYPE, amount, currency, duration, timezone)
VALUES
(1, 1, 'Executive Bonus', 5000.00, 'Egyptian Pound', 'One-Time', 'EET'),
(2, 2, 'Transportation Allowance', 500.00, 'Egyptian Pound', 'Monthly', 'EET'),
(2, 2, 'Housing Allowance', 1500.00, 'Egyptian Pound', 'Monthly', 'EET'),
(3, 3, 'Technology Allowance', 1500.00, 'Egyptian Pound', 'Monthly', 'EET'),
(4, 4, 'Professional Development', 800.00, 'Egyptian Pound', 'Quarterly', 'EET'),
(5, 5, 'Team Lead Bonus', 3000.00, 'Egyptian Pound', 'Quarterly', 'EET'),
(6, 6, 'Performance Bonus', 1000.00, 'Egyptian Pound', 'Monthly', 'EET'),
(7, 10, 'Meal Allowance', 300.00, 'Egyptian Pound', 'Monthly', 'EET'),
(1, 1, 'Health Insurance', -1200.00, 'Egyptian Pound', 'Monthly', 'EET'),
(2, 2, 'Parking Fee', -150.00, 'Egyptian Pound', 'Monthly', 'EET');

INSERT INTO PayrollPolicy (effective_date, TYPE, description)
VALUES ('2025-01-01',
        'Overtime',
        'Overtime compensation rules'),
       ('2025-01-01',
        'Lateness',
        'Lateness penalty policy'),
       ('2025-01-01',
        'Bonus',
        'Performance bonus criteria'),
       ('2025-01-01',
        'Deduction',
        'Standard deduction rules');

INSERT INTO OvertimePolicy (policy_id,
                            weekday_rate_multiplier,
                            weekend_rate_multiplier,
                            max_hours_per_month)
VALUES (1, 1.50, 2.00, 40);

INSERT INTO LatenessPolicy (policy_id, grace_period_mins, deduction_rate)
VALUES (2, 10, 25.00);

INSERT INTO BonusPolicy (policy_id, bonus_type, eligibility_criteria)
VALUES (3,
        'Performance-Based',
        'Minimum 6 months service and 90% attendance');

INSERT INTO DeductionPolicy (policy_id, deduction_reason, calculation_mode)
VALUES (4,
        'Unpaid Leave',
        'Daily Rate: Base Salary / 30');

INSERT INTO PayrollPolicy_ID (payroll_id, policy_id)
VALUES (1, 1),
       (1, 3),
       (2, 1),
       (3, 1),
       (4, 2),
       (5, 1),
       (5, 3);

INSERT INTO Payroll_Log (payroll_id,
                         actor,
                         change_date,
                         modification_type)
VALUES (1, 4, GETDATE(), 'Bonus Added'),
       (2,
        4,
        '2025-11-05 10:30:00',
        'Transportation Allowance Updated'),
       (4,
        4,
        '2025-11-06 14:20:00',
        'Lateness Deduction Applied');

INSERT INTO PayrollPeriod (payroll_id, start_date, end_date, STATUS)
VALUES (1, '2025-10-01', '2025-10-31', 'Completed'),
       (2, '2025-10-01', '2025-10-31', 'Completed'),
       (3, '2025-10-01', '2025-10-31', 'Completed'),
       (4, '2025-10-01', '2025-10-31', 'Completed'),
       (5, '2025-10-01', '2025-10-31', 'Completed'),
       (6, '2025-10-01', '2025-10-31', 'Completed'),
       (7, '2025-10-01', '2025-10-31', 'Completed');

INSERT INTO Notification (message_content,
                          timestamp,
                          urgency,
                          read_status,
                          notification_type)
VALUES ('Your leave request has been approved',
        '2025-11-20 09:00:00',
        'Normal',
        0,
        'Leave'),
       ('Payroll processed for October 2025',
        '2025-11-05 08:00:00',
        'Normal',
        1,
        'Payroll'),
       ('System maintenance scheduled for Nov 30',
        '2025-11-15 10:00:00',
        'High',
        0,
        'System'),
       ('New company policy effective Dec 1',
        '2025-11-18 14:00:00',
        'High',
        0,
        'Policy'),
       ('Your attendance correction request is pending',
        '2025-11-21 11:30:00',
        'Normal',
        0,
        'Attendance'),
       ('Performance review scheduled next week',
        '2025-11-19 09:00:00',
        'Normal',
        0,
        'Performance');

INSERT INTO Employee_Notification (employee_id,
                                   notification_id,
                                   delivery_status,
                                   delivered_at)
VALUES (6, 1, 'Delivered', '2025-11-20 09:01:00'),
       (1, 2, 'Delivered', '2025-11-05 08:01:00'),
       (2, 2, 'Delivered', '2025-11-05 08:01:00'),
       (3, 2, 'Delivered', '2025-11-05 08:01:00'),
       (3, 3, 'Delivered', '2025-11-15 10:01:00'),
       (1, 4, 'Delivered', '2025-11-18 14:01:00'),
       (6, 5, 'Delivered', '2025-11-21 11:31:00'),
       (6, 6, 'Delivered', '2025-11-19 09:01:00');

INSERT INTO Mission (destination, start_date, end_date, STATUS, employee_id, manager_id)
VALUES
('Smart Village, Giza', '2025-12-01', '2025-12-05', 'Approved', 3, 5),
('New Administrative Capital, Cairo', '2025-11-25', '2025-12-02', 'Approved', 1, 1),
('Borg El Arab, Alexandria', '2026-01-15', '2026-01-20', 'Pending', 2, 1),
('Cairo HQ', '2025-12-10', '2025-12-12', 'Approved', 8, 1);

INSERT INTO Reimbursement (TYPE,
                           claim_type,
                           approval_date,
                           current_status,
                           employee_id)
VALUES ('Travel',
        'Flight and Hotel',
        '2025-11-10',
        'Approved',
        6),
       ('Equipment',
        'Laptop Accessories',
        NULL,
        'Pending',
        7),
       ('Training',
        'Conference Fee',
        '2025-11-15',
        'Approved',
        3),
       ('Travel',
        'Taxi Fare',
        '2025-11-18',
        'Approved',
        10);

INSERT INTO Termination (date, reason, contract_id)
VALUES ('2024-12-31', 'Contract Completion', 6);

INSERT INTO EmployeeHierarchy (employee_id, manager_id, hierarchy_level)
VALUES (2, 1, 2),
       (3, 1, 2),
       (4, 2, 3),
       (5, 1, 2),
       (6, 5, 3),
       (7, 5, 3),
       (9, 6, 4),
       (10, 2, 3);

INSERT INTO ApprovalWorkflow (workflow_type,
                              threshold_amount,
                              approver_role,
                              created_by,
                              STATUS)
VALUES ('Leave Request',
        NULL,
        'Line Manager',
        2,
        'Active'),
       ('Reimbursement',
        1000.00,
        'HR Administrator',
        2,
        'Active'),
       ('Payroll Adjustment',
        5000.00,
        'Payroll Officer',
        4,
        'Active'),
       ('Contract Approval',
        NULL,
        'HR Administrator',
        2,
        'Active');

INSERT INTO ApprovalWorkflowStep (workflow_id,
                                  step_number,
                                  role_id,
                                  action_required)
VALUES (1, 1, 4, 'Review and Approve Leave'),
       (1, 2, 2, 'Final Approval if > 10 days'),
       (2, 1, 4, 'Initial Review'),
       (2, 2, 2, 'Final Approval if > $1000'),
       (3, 1, 3, 'Review Adjustment'),
       (3, 2, 2, 'Final Approval if > $5000'),
       (4, 1, 2, 'Contract Review and Approval');

INSERT INTO ManagerNotes (employee_id,
                          manager_id,
                          note_content,
                          created_at)
VALUES (6,
        5,
        'Excellent performance on recent project. Consider for promotion.',
        '2025-11-15 10:30:00'),
       (7,
        5,
        'Needs improvement in punctuality. Discussed in 1-on-1.',
        '2025-11-18 14:00:00'),
       (9,
        6,
        'Great learning attitude. Mentor feedback very positive.',
        '2025-11-10 09:00:00'),
       (10,
        2,
        'Ready for more responsibility in contract management.',

        '2025-11-12 11:00:00');
