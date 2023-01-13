use quan_ly_sinh_vien;
-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
select * from subject 
where subject.credit >= all (select credit from subject)
;

-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
select subject.* 
from mark 
join subject on  subject.sub_id = mark.sub_id
where mark.mark >= all (select mark from mark)
;

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, xếp hạng theo thứ tự điểm giảm dần
select student.*, avg(mark.mark) as diem_trung_binh
from student
join mark on student.student_id = mark.student_id
group by student.student_id
order by avg(mark.mark) desc
;