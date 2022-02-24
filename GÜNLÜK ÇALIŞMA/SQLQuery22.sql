SELECT @@SERVERNAME AS ServerName,
       @@servicename AS ServiceName,
       DB_NAME(st.dbid) AS [Database Name],
       st.[text] AS [Query Text],
       wt.last_execution_time AS [Last Execution Time],
       wt.execution_count AS [Execution Count],
       wt.total_worker_time / 1000000 AS [Total CPU Time(second)],
       wt.total_worker_time / wt.execution_count / 1000 AS [Average CPU Time(milisecond)],
       qp.query_plan
FROM
(
    SELECT TOP 50
           qs.last_execution_time,
           qs.execution_count,
           qs.plan_handle,
           qs.total_worker_time
    FROM sys.dm_exec_query_stats qs
    ORDER BY qs.total_worker_time DESC
) wt
    CROSS APPLY sys.dm_exec_sql_text(plan_handle) st
    CROSS APPLY sys.dm_exec_query_plan(plan_handle) qp
WHERE DB_NAME(st.dbid) IS NOT NULL
      AND NOT DB_NAME(st.dbid) = 'master'
-- and DB_NAME(st.dbid) = 'msdb'
--or not DB_NAME(st.dbid) = 'msdb' or not DB_NAME(st.dbid) = 'master' and or DB_NAME(st.dbid) = 'model' and or DB_NAME(st.dbid) = 'tempdb'
ORDER BY wt.total_worker_time DESC;