.class public Ltv/superawesome/lib/sasession/SACapper;
.super Ljava/lang/Object;


# static fields
.field private static final GOOGLE_ADVERTISING_CLASS:Ljava/lang/String; = "com.google.android.gms.ads.identifier.AdvertisingIdClient"

.field private static final GOOGLE_ADVERTISING_ID_CLASS:Ljava/lang/String; = "com.google.android.gms.ads.identifier.AdvertisingIdClient$Info"

.field private static final GOOGLE_ADVERTISING_ID_METHOD:Ljava/lang/String; = "getId"

.field private static final GOOGLE_ADVERTISING_INFO_METHOD:Ljava/lang/String; = "getAdvertisingIdInfo"

.field private static final GOOGLE_ADVERTISING_TRACKING_METHOD:Ljava/lang/String; = "isLimitAdTrackingEnabled"

.field private static final SUPER_AWESOME_FIRST_PART_DAU:Ljava/lang/String; = "SUPER_AWESOME_FIRST_PART_DAU"


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ltv/superawesome/lib/sasession/SACapper;->context:Landroid/content/Context;

    iput-object p1, p0, Ltv/superawesome/lib/sasession/SACapper;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Ltv/superawesome/lib/sasession/SACapper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Ltv/superawesome/lib/sasession/SACapper;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getDauID(Ltv/superawesome/lib/sasession/SACapperInterface;)V
    .locals 3

    if-eqz p1, :cond_1

    :goto_0
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v0}, Ltv/superawesome/lib/sautils/SAUtils;->isClassAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltv/superawesome/lib/sasession/SACapper;->context:Landroid/content/Context;

    if-nez v0, :cond_2

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ltv/superawesome/lib/sasession/SACapperInterface;->didFindDAUID(I)V

    :goto_1
    return-void

    :cond_1
    new-instance p1, Ltv/superawesome/lib/sasession/SACapper$1;

    invoke-direct {p1, p0}, Ltv/superawesome/lib/sasession/SACapper$1;-><init>(Ltv/superawesome/lib/sasession/SACapper;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTask;

    iget-object v1, p0, Ltv/superawesome/lib/sasession/SACapper;->context:Landroid/content/Context;

    new-instance v2, Ltv/superawesome/lib/sasession/SACapper$2;

    invoke-direct {v2, p0, p1}, Ltv/superawesome/lib/sasession/SACapper$2;-><init>(Ltv/superawesome/lib/sasession/SACapper;Ltv/superawesome/lib/sasession/SACapperInterface;)V

    invoke-direct {v0, v1, v2}, Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTask;-><init>(Landroid/content/Context;Ltv/superawesome/lib/sanetwork/asynctask/SAAsyncTaskInterface;)V

    goto :goto_1
.end method
