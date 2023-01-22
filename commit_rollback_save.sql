select * from mytables
begin tran t1
insert into mytables values(1,34,55,1),(2,45,23,1),(3,56,32,0);
sp_rename 'mytables.height','h','COLUMN';
commit tran t1

begin tran t2
delete from mytables
rollback tran t2

begin tran t3
delete from mytables where h=34
commit tran t3
-- after commit we cannot rollback.Below line gives error as: Cannot roll back t3. No transaction or savepoint of that name was found. 
rollback tran t3

begin tran  t5
insert into mytables values(1,34,55,1),(2,45,23,1),(3,56,32,0);
save transaction t5  -- below line will be saved in the t5 savepoint
delete from mytables where weights=23
save tran t6  -- below insert line will be saved in the t6 savepoint. 
insert into mytables values(1,34,55,1),(2,45,23,1),(3,56,32,0);
--upto the savepoints we can perform the commit or the rollback depending  on our needs
rollback tran t5 -- rolls back the t5 savepoint
rollback tran t6 -- rolls back to the t6 savepoint
