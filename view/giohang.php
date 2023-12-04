<table border="1" width="100%" style="margin: 0 auto;">
  <thead>
      <tr align="center">
          <th>STT</th>
          <th>Image</th>
          <th>Name</th>
          <th>Price</th>
          <th>Quantity</th>
          <th>Total Price</th>
          <th>Action</th>
      </tr>
  </thead>
  <tbody>
      <tr align="center">
          <td>1</td>
          <td>
              <img src="../img//anh1.jpg" alt="" style="width: 100px; height: auto">
          </td>
          <td></td>
          <td>
              100.000 <u>đ</u></td>
          <td>
              <input type="number" value="1" min="1">
          </td>
          <td>
              100.000 <u>đ</u>
          </td>
          <td>
              <button>Xóa</button>
          </td>
      </tr>

      <tr>
          <td colspan="5" align="center">
              <h2>Tổng tiền hàng:</h2>
          </td>
          <td colspan="2" align="center">
              <h2>
                  <span>
                      100.000<u>đ</u>
                  </span>
              </h2>
          </td>
      </tr>
  </tbody>
</table>
<br>
<form action="index.php?act=order" method="post">
  <input type="submit" style="padding:10px;" name="order" value="Đặt Hàng">
</form>