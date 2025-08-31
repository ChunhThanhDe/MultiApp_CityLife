/// Configuration file for Biti Payment Gateway
class BitiPaymentConfig {
  // API Configuration
  static const String baseUrl = 'https://app.biti.so';
  static const String environment = 'sandbox';

  // Sandbox Credentials
  static const String sandboxMerchantKey = 'TEST_16D9F8A47BB3C96C';
  static const String sandboxApiKey = 'n1-oPRJtKUH0j6YWut42OpKobLwYsCHK';

  // Production Credentials
  static const String productionMerchantKey = '';
  static const String productionApiKey = '';

  // Test User Credentials
  static const String testUserId = '618629126';
  static const String testUserPassword = 'Test@User#47BB36';
  static const String testWalletPin = '1212';

  // Payment Configuration
  static const String defaultCurrency = 'USD';
  static const String defaultDescription = 'Order payment';

  static const String cancelUrl = 'https://6ammart.com/payment/cancel';
  static const String successUrl = 'https://6ammart.com/payment/success';
  static const String ipnUrl = 'https://6ammart.com/payment/webhook';

  // Payment Monitoring
  static const int paymentCheckIntervalSeconds = 5;
  static const int paymentTimeoutMinutes = 10;

  /// Gets the current merchant key based on environment
  static String get merchantKey {
    return environment == 'production' ? productionMerchantKey : sandboxMerchantKey;
  }

  /// Gets the current API key based on environment
  static String get apiKey {
    return environment == 'production' ? productionApiKey : sandboxApiKey;
  }

  /// Gets the current environment header value
  static String get environmentHeader {
    return environment;
  }

  /// Checks if running in production mode
  static bool get isProduction {
    return environment == 'production';
  }

  /// Checks if running in sandbox mode
  static bool get isSandbox {
    return environment == 'sandbox';
  }
}
