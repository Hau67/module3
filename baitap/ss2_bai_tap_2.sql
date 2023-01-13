use ss2_bai_tap_2;
-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
select oid,odate,ototalprice
from order1;
-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
select cname,pname
from order1
join customer on order1.cid = customer.cid
join orderdetail on order1.oid = orderdetail.oid
join product on orderdetail.pid = product.pid;
-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
select cname
from customer
left join order1 on customer.cid = order1.cid
where order1.cid is null;
-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn.
-- Giá bán của từng loại được tính = odQTY*pPrice)
SELECT order1.oid,
       order1.odate,
       sum(orderdetail.odQTY * product.pprice) AS 'order_total_price'
FROM order1
JOIN orderdetail ON order1.oid = orderdetail.oid
JOIN product ON orderdetail.pid = product.pid
group by order1.oid;