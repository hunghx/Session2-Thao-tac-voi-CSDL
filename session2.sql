-- thêm mới bản ghi vào bảng 
insert into catalog(id,name, description,status) values
(10,'Dép','Thời trang',1), 
(11,'Đồng hồ','Thời trang',0), 
(12,'Mỹ phẩm','Thời trang',0), 
(13,'Mũ','Thời trang',1); 
-- lấy ra dũ liệu của bảng catalog
select * from catalog ;

insert into product values
(11,'SP011',55,null,10),
(2,'SP002',10,1,10),
(3,'SP003',20,2,10),
(4,'SP004',30,2,10),
(5,'SP005',40,2,10),
(6,'SP006',50,3,10),
(7,'SP007',60,4,10),
(8,'SP008',70,4,10),
(9,'SP009',80,6,10),
(10,'SP010',90,6,10);
-- cập nhật
update catalog set description =null , status = 0 where id = 2;
update catalog set description ='' where status = 1;

-- xóa bản ghi 
delete from catalog where id =4;
delete from catalog;

-- truy vấn dữ liệu
select curdate();

select id,status,name from catalog;

select * from catalog where description is not null;

select * from catalog where id not in (1,2,3,7,8,9);

select * from catalog where id not between 3 and 5;

-- thống kê số lượng danh mục ẩn và hiện trong bảng danh mục 
select status, count(id) from catalog group by status ;
-- thống kê những mã danh mục có số sản phẩm lớn hơn hoặc băng 2
select catalog_id, count(id)   from product group by catalog_id having count(id) >=2;
select * from product;

-- sắp xếp 
select * from product order by catalog_id desc,price;



-- join bảng 

select *  from product  p right join catalog  c on p.catalog_id = c.id;
select *  from product  p right join student  s on p.catalog_id = s.id;
