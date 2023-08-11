.class public Lcom/google/android/gms/internal/zzra;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzaWs:Ljava/lang/String;

.field private final zzbak:Lcom/google/android/gms/internal/zzrc;

.field zzbal:Ljava/util/Map;

.field private final zzbam:Ljava/util/Map;

.field private final zzpW:Lcom/google/android/gms/internal/zzmn;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzrc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/zzrc;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/zzmp;->zzqt()Lcom/google/android/gms/internal/zzmn;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/zzra;-><init>(Landroid/content/Context;Ljava/util/Map;Lcom/google/android/gms/internal/zzrc;Lcom/google/android/gms/internal/zzmn;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/Map;Lcom/google/android/gms/internal/zzrc;Lcom/google/android/gms/internal/zzmn;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzaWs:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzra;->zzbal:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzra;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzra;->zzpW:Lcom/google/android/gms/internal/zzmn;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzra;->zzbak:Lcom/google/android/gms/internal/zzrc;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzra;->zzbam:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public zzfm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzra;->zzaWs:Ljava/lang/String;

    return-void
.end method
