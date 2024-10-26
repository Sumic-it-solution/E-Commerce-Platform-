import 'package:flutter/material.dart';

class MyOrderPage extends StatefulWidget {
  const MyOrderPage({super.key});

  @override
  _MyOrderPageState createState() => _MyOrderPageState();
}

class _MyOrderPageState extends State<MyOrderPage> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("My Orders",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF013252))),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildTab("Delivered", 0),
                _buildTab("Processing", 1),
                _buildTab("Cancelled", 2),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  _buildOrderCard(
                      "Order No 1947034", "20 Oct 2024", "iW345453455", 3, 112),
                  _buildOrderCard(
                      "Order No 1947035", "18 Oct 2024", "iW123453789", 1, 50),
                  _buildOrderCard(
                      "Order No 1947036", "15 Oct 2024", "iW987653211", 2, 75),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTab(String text, int index) {
    bool isActive = activeIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          activeIndex = index;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          color: isActive ? const Color(0xFF013252) : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: isActive ? Colors.white : Colors.black,
            fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }

  Widget _buildOrderCard(String orderNo, String date, String trackingNo,
      int quantity, double totalAmount) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(orderNo, style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(date, style: const TextStyle(color: Colors.grey)),
              ],
            ),
            const SizedBox(height: 8),
            Text("Tracking Number: $trackingNo",
                style: TextStyle(color: Colors.grey[600])),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Quantity: $quantity"),
                Text("Total Amount: \$$totalAmount",
                    style: const TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => OrderDetailsPage(
                                orderNo: orderNo,
                                date: date,
                                trackingNo: trackingNo,
                                quantity: quantity,
                                totalAmount: totalAmount,
                              )),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    "Details",
                    style: TextStyle(color: Color(0xFF013252)),
                  ),
                ),
                const Text(
                  "Delivered",
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class OrderDetailsPage extends StatelessWidget {
  final String orderNo;
  final String date;
  final String trackingNo;
  final int quantity;
  final double totalAmount;

  const OrderDetailsPage({super.key, 
    required this.orderNo,
    required this.date,
    required this.trackingNo,
    required this.quantity,
    required this.totalAmount,
  });

  @override
  Widget build(BuildContext context) {
    
    List<Map<String, dynamic>> items = [
      {
        'image': 'assets/images/accessories.jpg',
        'name': 'Item 1',
        'brand': 'Mango',
        'color': 'Black',
        'size': 'M',
        'units': 1,
        'price': 40.0,
      },
      {
        'image': 'assets/images/bag_4.jpg',
        'name': 'Item 2',
        'brand': 'Zara',
        'color': 'Red',
        'size': 'L',
        'units': 2,
        'price': 36.0,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(orderNo,
                    style:
                        const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text(date, style: const TextStyle(color: Colors.grey)),
              ],
            ),
            const SizedBox(height: 8),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Tracking Number: $trackingNo"),
                const Text(
                  "Delivered",
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 8),
            
            Text("Quantity: $quantity items"),
            const SizedBox(height: 16),
            
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return _buildOrderItemCard(items[index]);
              },
            ),
            const SizedBox(height: 16),
            
            const Text("Order Information",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Divider(thickness: 1, color: Colors.grey[300]),
            _buildOrderInfoRow(
                "Shipping Address:", "123 Main Street, City, Country"),
            _buildOrderInfoRow(
                "Payment Method:", "MasterCard **** **** **** 3947"),
            _buildOrderInfoRow("Delivery Method:", "FedEx, 3 days, \$20"),
            _buildOrderInfoRow("Discount:", "-\$10"),
            _buildOrderInfoRow("Total Amount:", "\$totalAmount"),
            const SizedBox(height: 16),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  child: const Text("Reorder"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                  ),
                  child: const Text("Leave Feedback"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderItemCard(Map<String, dynamic> item) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            
            SizedBox(
              width: 60,
              height: 60,
              child: Image.asset(item['image'], fit: BoxFit.cover),
            ),
            const SizedBox(width: 12),
            
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item['name'],
                      style: const TextStyle(fontWeight: FontWeight.bold)),
                  Text(item['brand'], style: const TextStyle(color: Colors.grey)),
                  Text("Color: ${item['color']}"),
                ],
              ),
            ),
            
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text("Size: ${item['size']}"),
                const SizedBox(height: 8),
                Text("Units: ${item['units']}"),
                Text("\$${item['price']}",
                    style: const TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOrderInfoRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Expanded(child: Text(title, style: const TextStyle(color: Colors.grey))),
          Expanded(child: Text(value, textAlign: TextAlign.right)),
        ],
      ),
    );
  }
}
