use case_study_sql;
 -- câu2 
 select *,length(ho_ten) from nhan_vien where (ho_ten like 'h%' or ho_ten like 'k%' or ho_ten like 't%')
and length(ho_ten) <= 15;

-- câu 3
