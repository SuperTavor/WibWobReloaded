.class public final Lcom/google/android/gms/appindexing/AppIndex;
.super Ljava/lang/Object;


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;

.field public static final APP_INDEX_API:Lcom/google/android/gms/common/api/Api;

.field public static final AppIndexApi:Lcom/google/android/gms/appindexing/AppIndexApi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/appdatasearch/zza;->zzPV:Lcom/google/android/gms/common/api/Api;

    sput-object v0, Lcom/google/android/gms/appindexing/AppIndex;->API:Lcom/google/android/gms/common/api/Api;

    sget-object v0, Lcom/google/android/gms/appdatasearch/zza;->zzPV:Lcom/google/android/gms/common/api/Api;

    sput-object v0, Lcom/google/android/gms/appindexing/AppIndex;->APP_INDEX_API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzju;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzju;-><init>()V

    sput-object v0, Lcom/google/android/gms/appindexing/AppIndex;->AppIndexApi:Lcom/google/android/gms/appindexing/AppIndexApi;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
