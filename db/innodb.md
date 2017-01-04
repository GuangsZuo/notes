# mysql innondb engine internal

## clustered index is also called primary index, secondary index may have duplicates while primary does not allow.  
    The InnoDB storage engine creates a clustered index for every table. If the table has a primary key, that is the clustered index. If not, InnoDB internally assigns a six-byte unique ID to every row and uses that as the clustered index.
    (1)  all index are B-trees 
    In InnoDB, the primary key’s leaf nodes are the data. Secondary indexes have a pointer to the data at their leaf nodes.
    (2) MyISAM has no clustered index, so the data isn’t physically ordered by any index (it’s in insertion order), but in InnoDB, the rows are physically ordered by the primary key. 
      
