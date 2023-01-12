select ma_nhan_vien, ho_ten, ngay_sinh, so_cmnd, luong, so_dien_thoai, email, dia_chi, ma_vi_tri, ma_trinh_do, ma_bo_phan 
from nhan_vien
where (ho_ten like 'h_%'
or ho_ten like 'k_%'
or ho_ten like 'k_%')
and length(ho_ten) <= 15 ;
  