import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Settings",
                style: TextStyle(
                  fontSize: 28, 
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF013252), 
                ),
              ),
              const SizedBox(height: 16),
              const Text("Personal Information", style: TextStyle(fontSize: 20)),
              const SizedBox(height: 8),
              _buildStyledTextField('Full Name'),
              const SizedBox(height: 16),
              _buildStyledDateField(context),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Password", style: TextStyle(fontSize: 20)),
                  TextButton(
                    onPressed: () {
                      _showChangePasswordModal(context);
                    },
                    child: const Text("Change"),
                  ),
                ],
              ),
              _buildStyledTextField('Password', obscureText: true),
              const SizedBox(height: 16),
              const Text("Notifications", style: TextStyle(fontSize: 20)),
              const SizedBox(height: 8),
              _buildSwitchRow("Sales", true),
              _buildSwitchRow("New Arrivals", false),
              _buildSwitchRow("Delivery Status Changes", true),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStyledTextField(String label, {bool obscureText = false}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 2), 
          ),
        ],
      ),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: label,
          border: InputBorder.none, 
          contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        ),
      ),
    );
  }

  Widget _buildStyledDateField(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1900),
          lastDate: DateTime.now(),
        );
      },
      child: _buildStyledTextField('Date of Birth', obscureText: false),
    );
  }

  Widget _buildSwitchRow(String title, bool value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        Switch(
          value: value,
          onChanged: (bool newValue) {
            
          },
          activeColor: Colors.green,
          inactiveTrackColor: Colors.grey,
        ),
      ],
    );
  }

  void _showChangePasswordModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Change Password",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16),
              _buildStyledTextField('Old Password', obscureText: true),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      
                    },
                    child: const Text("Forgot Password?"),
                  ),
                ],
              ),
              _buildStyledTextField('New Password', obscureText: true),
              _buildStyledTextField('Confirm Password', obscureText: true),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: const Color(0xFF013252), 
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  minimumSize: const Size(double.infinity, 50), 
                ),
                child: const Text("Save Password"),
              ),
              const SizedBox(height: 16),
            ],
          ),
        );
      },
    );
  }
}
