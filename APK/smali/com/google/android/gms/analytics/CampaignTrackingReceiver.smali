.class public Lcom/google/android/gms/analytics/CampaignTrackingReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field static zzLh:Lcom/google/android/gms/internal/zzqy;

.field static zzLi:Ljava/lang/Boolean;

.field static zzpy:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->zzpy:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static zzV(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->zzLi:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->zzLi:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-class v0, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/analytics/internal/zzam;->zza(Landroid/content/Context;Ljava/lang/Class;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->zzLi:Ljava/lang/Boolean;

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-static {p1}, Lcom/google/android/gms/analytics/internal/zzf;->zzX(Landroid/content/Context;)Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zziu()Lcom/google/android/gms/analytics/internal/zzaf;

    move-result-object v1

    const-string v2, "referrer"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CampaignTrackingReceiver received"

    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/analytics/internal/zzaf;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "com.android.vending.INSTALL_REFERRER"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v0, "CampaignTrackingReceiver received unexpected intent without referrer extra"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/internal/zzaf;->zzbd(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/analytics/CampaignTrackingService;->zzW(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v4, "CampaignTrackingService not registered or disabled. Installation tracking not possible. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {v1, v4}, Lcom/google/android/gms/analytics/internal/zzaf;->zzbd(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, v2}, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->zzaS(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzf;->zziv()Lcom/google/android/gms/analytics/internal/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/internal/zzr;->zzjA()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Received unexpected installation campaign on package side"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/internal/zzaf;->zzbe(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->zzhJ()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "referrer"

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->zzpy:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p1, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    if-nez v3, :cond_4

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    sget-object v0, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->zzLh:Lcom/google/android/gms/internal/zzqy;

    if-nez v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/zzqy;

    const/4 v3, 0x1

    const-string v4, "Analytics campaign WakeLock"

    invoke-direct {v0, p1, v3, v4}, Lcom/google/android/gms/internal/zzqy;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->zzLh:Lcom/google/android/gms/internal/zzqy;

    sget-object v0, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->zzLh:Lcom/google/android/gms/internal/zzqy;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/zzqy;->setReferenceCounted(Z)V

    :cond_5
    sget-object v0, Lcom/google/android/gms/analytics/CampaignTrackingReceiver;->zzLh:Lcom/google/android/gms/internal/zzqy;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/zzqy;->acquire(J)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "CampaignTrackingService service at risk of not starting. For more reliable installation campaign reports, add the WAKE_LOCK permission to your manifest. See http://goo.gl/8Rd3yj for instructions."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/internal/zzaf;->zzbd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method protected zzaS(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected zzhJ()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/google/android/gms/analytics/CampaignTrackingService;

    return-object v0
.end method
