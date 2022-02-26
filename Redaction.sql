--BEGIN
--  DBMS_REDACT.ADD_POLICY
--   (object_schema => USER,
--    object_name => 'STUDENT',
--    policy_name => 'STUDENT_POLICY',
--    column_name => 'CREDIT_CARD_NUMBER',
--    function_type => DBMS_REDACT.PARTIAL,
--    function_parameters => 'VVVVFVVVVFVVVVFVVVV,VVVV VVVV VVVV VVVV,*,1,19',
--    expression => '1=1');
--END;
--
--BEGIN
--  DBMS_REDACT.ALTER_POLICY
--   (object_schema => USER,
--    object_name => 'STUDENT',
--    policy_name => 'STUDENT_POLICY',
--    action => DBMS_REDACT.ADD_COLUMN,
--    column_name => 'DATEOFBIRTH',
--    function_type => DBMS_REDACT.PARTIAL,
--    function_parameters => 'm5d5Y',
--    expression => '1=1');
--END;
--/
--
--BEGIN
--    DBMS_REDACT.DROP_POLICY(object_schema => USER,
--    object_name => 'STUDENT',
--    policy_name => 'STUDENT_POLICY');
--END;
--/
BEGIN

DBMS_REDACT.DISABLE_POLICY(object_schema => USER,
    object_name => 'STUDENT',
    policy_name => 'STUDENT_POLICY');
    
    END;
/    
--BEGIN
--DBMS_REDACT.ENABLE_POLICY(object_schema => USER,
--    object_name => 'STUDENT',
--    policy_name => 'STUDENT_POLICY');
--    
--    END;