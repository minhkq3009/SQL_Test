use NORTHWND
SET IDENTITY_INSERT Products ON;

--1. Lệnh SELECT: Lấy dữ liệu từ bảng
SELECT * FROM Products;

--2. Lệnh Insert: Thêm dữ liệu mới vào bảng
Insert into Products(ProductID, ProductName, UnitPrice) Values (1001, 'New Product', 10.99);

--3. Lệnh UPDATE: Cập nhật dữ liệu đã có trong bảng.
UPDATE Products SET UnitPrice = 12.99 WHERE ProductID = 1001;

--4. Lệnh DELETE: Xóa dữ liệu khỏi bảng.
DELETE FROM Products WHERE ProductID = 1001;

--5. Lệnh WHERE: Lọc dữ liệu dựa trên điều kiện.
SELECT * FROM Products WHERE UnitPrice > 50;

--6. Lệnh ORDER BY: Sắp xếp dữ liệu.
SELECT * FROM Products ORDER BY UnitPrice ASC;

--7. Lệnh GROUP BY: Nhóm dữ liệu theo một trường.
SELECT SupplierID, COUNT(*) AS TotalProducts FROM Products GROUP BY SupplierID;

--8. Lệnh JOIN: Kết hợp dữ liệu từ nhiều bảng.
SELECT Products.ProductName, Suppliers.SupplierID FROM Products INNER JOIN Suppliers ON Products.SupplierID = Suppliers.SupplierID;

--9. Lệnh HAVING: Lọc dữ liệu sau khi sử dụng GROUP BY.
SELECT SupplierID, COUNT(*) AS TotalProducts FROM Products GROUP BY SupplierID HAVING COUNT(*) >= 5;



