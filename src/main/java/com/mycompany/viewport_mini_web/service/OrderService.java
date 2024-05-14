package com.mycompany.viewport_mini_web.service;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mycompany.viewport_mini_web.dao.OrderItemDao;
import com.mycompany.viewport_mini_web.dao.OrdersDao;
import com.mycompany.viewport_mini_web.dao.ProductDao;
import com.mycompany.viewport_mini_web.dao.ShipmentDao;
import com.mycompany.viewport_mini_web.dto.OrderItem;
import com.mycompany.viewport_mini_web.dto.Orders;
import com.mycompany.viewport_mini_web.dto.ProductCartData;
import com.mycompany.viewport_mini_web.dto.TempPaymentData;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class OrderService {
  @Autowired
  private OrdersDao orderDao;
  @Autowired
  private OrderItemDao orderItemDao;
  @Autowired
  private ProductDao productDao;
  @Autowired
  private ShipmentDao shipmentDao;

  public TempPaymentData addOrderConfirmData(String[] productIds, String[] quantities,
      String totalPriceWithoutDelivery, String totalPriceWithDelivery, String deliveryType) {
    TempPaymentData tempPaymentData = new TempPaymentData();
    tempPaymentData.setTotalPrice(Integer.parseInt(totalPriceWithoutDelivery));
    tempPaymentData.setTotalPriceWithDelivery(Integer.parseInt(totalPriceWithDelivery));
    tempPaymentData.setDeliveryType(Integer.parseInt(deliveryType)); // Assuming deliveryType is a
                                                                     // string
    List<ProductCartData> ItemList = new ArrayList<>();

    for (int i = 0; i < productIds.length; i++) {
      ProductCartData item = new ProductCartData(
          productDao.selectByPid(Integer.parseInt(productIds[i])), Integer.parseInt(quantities[i]));
      ItemList.add(item);
    }
    tempPaymentData.setItemList(ItemList);
    return tempPaymentData;
  }

  public void addOrderData(Orders orders) {
    orderDao.insertOrderData(orders);
    for (OrderItem orderItem : orders.getOrderItems()) {
      orderItemDao.insertOrderItemData(orderItem);
    }

    shipmentDao.insertShipmentData(orders.getShipment());
  }

  public List<Orders> getOrderListByUserId(int usid) {
    List<Orders> ordersList = orderDao.selectAllOrdersByUserId(usid);
    return ordersList;
  }

  public int getTotalSalesAmount() {
    int totalSalesAmount = orderDao.getTotalSalesAmount();
    return totalSalesAmount;
  }
}
