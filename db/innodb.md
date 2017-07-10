# mysql innondb engine internal

## clustered index is also called primary index, secondary index may have duplicates while primary does not allow.  
    The InnoDB storage engine creates a clustered index for every table. If the table has a primary key, that is the clustered index. If not, InnoDB internally assigns a six-byte unique ID to every row and uses that as the clustered index.
    (1)  all index are B-trees 
    In InnoDB, the primary key’s leaf nodes are the data. Secondary indexes have a pointer to the data at their leaf nodes.
    (2) MyISAM has no clustered index, so the data isn’t physically ordered by any index (it’s in insertion order), but in InnoDB, the rows are physically ordered by the primary key. 
      
#Mysql handling group by
 MySQL 5.7.5 and up implements detection of functional dependence. If the ONLY_FULL_GROUP_BY SQL mode is enabled (which it is by default), MySQL rejects queries for which the select list, HAVING condition, or ORDER BY list refer to nonaggregated columns that are neither named in the GROUP BY clause nor are functionally dependent on them.
 If ONLY_FULL_GROUP_BY is disabled, a MySQL extension to the standard SQL use of GROUP BY permits the select list, HAVING condition, or ORDER BY list to refer to nonaggregated columns even if the columns are not functionally dependent on GROUP BY columns. This causes MySQL to accept the preceding query. In this case, the server is free to choose any value from each group, so unless they are the same, the values chosen are indeterminate, which is probably not what you want.
