.class public Lcom/example/util/YWPNotificationHelper;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/example/util/YWPNotificationHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/example/util/YWPNotificationHelper;->a:Ljava/lang/String;

    invoke-static {}, Lcom/example/sgf/MainActivity;->getInstance()Lcom/example/sgf/MainActivity;

    move-result-object v0

    sput-object v0, Lcom/example/util/YWPNotificationHelper;->b:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/example/util/YWPNotificationHelper;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/example/util/YWPNotificationReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "notification_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "message"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/example/util/YWPNotificationHelper;->b:Landroid/app/Activity;

    const/high16 v2, 0x8000000

    invoke-static {v1, p1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public static cancelLocalNotification(I)V
    .locals 4

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/example/util/YWPNotificationHelper;->a(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v2

    sget-object v0, Lcom/example/util/YWPNotificationHelper;->b:Landroid/app/Activity;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sget-object v1, Lcom/example/util/YWPNotificationHelper;->b:Landroid/app/Activity;

    const-string v3, "notification"

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-virtual {v1, p0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public static showLocalNotification(Ljava/lang/String;II)V
    .locals 6

    invoke-static {p0, p2}, Lcom/example/util/YWPNotificationHelper;->a(Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v0, 0xd

    invoke-virtual {v2, v0, p1}, Ljava/util/Calendar;->add(II)V

    sget-object v0, Lcom/example/util/YWPNotificationHelper;->b:Landroid/app/Activity;

    const-string v3, "alarm"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method
