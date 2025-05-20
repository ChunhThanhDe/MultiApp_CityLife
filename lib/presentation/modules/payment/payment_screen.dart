import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/base/base_screen.dart';
import 'package:sixam_mart_user/presentation/shared/app_bar_basic.dart';

import 'payment_controller.dart';

class PaymentScreen extends BaseScreen<PaymentController> {
  const PaymentScreen({super.key});

  @override
  PreferredSizeWidget? buildAppBar(BuildContext context) {
    return BasicAppBar(
      title: "Add payment card",
      onBack: () => Get.back(),
    );
  }

  @override
  Widget buildScreen(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFE8EBEE)),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    // Card number
                    _LabelRow("Card number", required: true),
                    const SizedBox(height: 8),
                    _InputBox(
                      child: Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: controller.cardNumberController,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                hintText: "XXXX XXXX XXXX XXXX",
                                border: InputBorder.none,
                                isDense: true,
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: Color(0xFF798A9A),
                                ),
                              ),
                              style: const TextStyle(fontSize: 14),
                            ),
                          ),
                          const Icon(Icons.credit_card, color: Color(0xFFB0BAC4)),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    // Exp date & CVV
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _LabelRow("Exp. date", required: true),
                              const SizedBox(height: 8),
                              _InputBox(
                                child: TextFormField(
                                  controller: controller.expDateController,
                                  keyboardType: TextInputType.datetime,
                                  decoration: const InputDecoration(
                                    hintText: "MM/YY",
                                    border: InputBorder.none,
                                    isDense: true,
                                    hintStyle: TextStyle(
                                      fontSize: 14,
                                      color: Color(0xFF798A9A),
                                    ),
                                  ),
                                  style: const TextStyle(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _LabelRow("CVV", required: true),
                              const SizedBox(height: 8),
                              _InputBox(
                                child: Obx(() => Row(
                                      children: [
                                        Expanded(
                                          child: TextFormField(
                                            controller: controller.cvvController,
                                            obscureText: controller.obscureCvv.value,
                                            keyboardType: TextInputType.number,
                                            decoration: const InputDecoration(
                                              hintText: "CVV",
                                              border: InputBorder.none,
                                              isDense: true,
                                              hintStyle: TextStyle(
                                                fontSize: 14,
                                                color: Color(0xFF798A9A),
                                              ),
                                            ),
                                            style: const TextStyle(fontSize: 14),
                                          ),
                                        ),
                                        IconButton(
                                          icon: Icon(
                                            controller.obscureCvv.value ? Icons.visibility_off : Icons.visibility,
                                            color: const Color(0xFFB0BAC4),
                                            size: 20,
                                          ),
                                          onPressed: () {
                                            controller.obscureCvv.value = !controller.obscureCvv.value;
                                          },
                                        ),
                                      ],
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Country & Zip
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _LabelRow("Country", required: true),
                              const SizedBox(height: 8),
                              _InputBox(
                                child: Obx(
                                  () => DropdownButtonFormField<String>(
                                    value: controller.selectedCountry.value,
                                    isExpanded: true,
                                    hint: const Text(
                                      "Country",
                                      style: TextStyle(fontSize: 14, color: Color(0xFF798A9A)),
                                    ),
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      isDense: true,
                                      contentPadding: EdgeInsets.zero,
                                    ),
                                    icon: const Icon(Icons.keyboard_arrow_down),
                                    items: const [
                                      DropdownMenuItem(
                                          value: "US",
                                          child: Row(
                                            children: [
                                              Icon(Icons.flag, size: 16),
                                              SizedBox(width: 8),
                                              Text("United States"),
                                            ],
                                          )),
                                      DropdownMenuItem(
                                          value: "VN",
                                          child: Row(
                                            children: [
                                              Icon(Icons.flag, size: 16),
                                              SizedBox(width: 8),
                                              Text("Vietnam"),
                                            ],
                                          )),
                                    ],
                                    onChanged: (value) {
                                      controller.selectedCountry.value = value;
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              _LabelRow("Zip code", required: true),
                              const SizedBox(height: 8),
                              _InputBox(
                                child: TextFormField(
                                  controller: controller.zipController,
                                  keyboardType: TextInputType.number,
                                  decoration: const InputDecoration(
                                    hintText: "Zip code",
                                    border: InputBorder.none,
                                    isDense: true,
                                    hintStyle: TextStyle(fontSize: 14, color: Color(0xFF798A9A)),
                                  ),
                                  style: const TextStyle(fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Nickname
                    _LabelRow("Nickname", required: false, optional: true),
                    const SizedBox(height: 8),
                    _InputBox(
                      child: TextFormField(
                        controller: controller.nicknameController,
                        decoration: const InputDecoration(
                          hintText: "E.g. kadirmiye",
                          border: InputBorder.none,
                          isDense: true,
                          hintStyle: TextStyle(fontSize: 14, color: Color(0xFF798A9A)),
                        ),
                        style: const TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        // Actions
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Obx(() => SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: controller.isValid.value ? controller.onSave : null,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF5856D7).withOpacity(controller.isValid.value ? 1 : 0.5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32),
                        ),
                        elevation: 0,
                      ),
                      child: const Text(
                        "Save",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  )),

              const SizedBox(height: 16),
              // Divider with "or"
              Row(
                children: [
                  const Expanded(
                    child: Divider(
                      color: Color(0xFFE8EBEE),
                      thickness: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text("OR", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12, color: Color(0xFF4A5763))),
                  ),
                  const Expanded(
                    child: Divider(
                      color: Color(0xFFE8EBEE),
                      thickness: 1,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                height: 48,
                child: OutlinedButton.icon(
                  icon: const Icon(Icons.camera_alt, color: Color(0xFF161A1D)),
                  label: const Text(
                    "Scan your card",
                    style: TextStyle(
                      color: Color(0xFF161A1D),
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color(0xFFF7F8F9),
                    side: BorderSide.none,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// Label with red star (required)
class _LabelRow extends StatelessWidget {
  final String text;
  final bool required;
  final bool optional;
  const _LabelRow(this.text, {this.required = false, this.optional = false});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 14, color: Color(0xFF161A1D), fontWeight: FontWeight.w400),
        ),
        if (required)
          const Text(
            " *",
            style: TextStyle(fontSize: 14, color: Color(0xFFFF3B30)),
          ),
        if (optional)
          const Text(
            " (optional)",
            style: TextStyle(fontSize: 14, color: Color(0xFF798A9A)),
          ),
      ],
    );
  }
}

// Input box style
class _InputBox extends StatelessWidget {
  final Widget child;
  const _InputBox({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: const Color(0xFFE8EBEE)),
        borderRadius: BorderRadius.circular(6),
      ),
      alignment: Alignment.centerLeft,
      child: child,
    );
  }
}
