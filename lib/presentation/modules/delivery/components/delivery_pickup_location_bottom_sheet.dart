import 'package:flutter/material.dart';

class PickupLocationBottomSheet extends StatelessWidget {
  const PickupLocationBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 36,
                height: 4,
                margin: EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(color: Color(0xFFEBEBF5), borderRadius: BorderRadius.circular(2)),
              ),
              Text('Pickup Location', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
              SizedBox(height: 16),
              // Search Field
              TextField(
                decoration: InputDecoration(
                  hintText: "Search for an address",
                  prefixIcon: Icon(Icons.search, size: 20),
                  filled: true,
                  fillColor: Color(0xFFF7F8F9),
                  contentPadding: EdgeInsets.symmetric(vertical: 8),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(100), borderSide: BorderSide.none),
                ),
              ),
              SizedBox(height: 16),
              // Saved addresses
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Saved addresses', style: TextStyle(fontSize: 14, color: Color(0xFF798A9A))),
              ),
              ListTile(
                title: Text("My Work"),
                subtitle: Text("2150 N Waterman Ave, El Centro, CA 92243"),
                onTap: () {}, // handle select
              ),
              ListTile(
                title: Text("My Home"),
                subtitle: Text("2216 N 10th St, Apt 0, El Centro, CA 92243"),
                trailing: Icon(Icons.check, color: Color(0xFF5856D7)),
                onTap: () {}, // handle select
              ),
              ListTile(
                title: Text("Hospital"),
                subtitle: Text("385 Main St, El Centro, CA 92243"),
                onTap: () {}, // handle select
              ),
              SizedBox(height: 8),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  minimumSize: Size.fromHeight(48),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ), // handle add new address
                child: Text("Add new address"),
              ),
              SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}
