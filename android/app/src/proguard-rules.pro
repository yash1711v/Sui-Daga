# Existing GSON rules
# ... (keep all existing rules)

# Flutter Local Notifications Plugin
-keep class com.dexterous.** { *; }

# Flutter
-keep class io.flutter.app.** { *; }
-keep class io.flutter.plugin.**  { *; }
-keep class io.flutter.util.**  { *; }
-keep class io.flutter.view.**  { *; }
-keep class io.flutter.**  { *; }
-keep class io.flutter.plugins.**  { *; }

# Firebase Messaging (if you're using it)
-keep class com.google.firebase.** { *; }

# HTTP and Dart
-keep class io.flutter.plugins.** { *; }

# Keep your model classes (adjust the package name as needed)
-keep class com.manojavasoftware.mykawach.models.** { *; }

# Permission Handler
-keep class com.baseflow.permissionhandler.** { *; }

# Background Services
-keep class com.transistorsoft.** { *; }

# Notification-related classes
-keep class android.app.Notification { *; }
-keep class android.app.NotificationChannel { *; }
-keep class android.app.NotificationManager { *; }

# If you're using WorkManager for background tasks
-keepclassmembers class * extends androidx.work.Worker {
    public <init>(android.content.Context,androidx.work.WorkerParameters);
}

# General catch-all rule for custom application classes
-keep class com.manojavasoftware.mykawach.** { *; }