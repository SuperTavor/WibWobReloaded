.class public Lcom/google/android/gms/analytics/internal/zzh;
.super Ljava/lang/Object;


# instance fields
.field private final zzMY:J

.field private final zzMZ:Ljava/lang/String;

.field private final zzMj:Ljava/lang/String;

.field private final zzNa:Z

.field private zzNb:J

.field private final zzvS:Ljava/util/Map;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;ZJLjava/util/Map;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzx;->zzcr(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzx;->zzcr(Ljava/lang/String;)Ljava/lang/String;

    iput-wide p1, p0, Lcom/google/android/gms/analytics/internal/zzh;->zzMY:J

    iput-object p3, p0, Lcom/google/android/gms/analytics/internal/zzh;->zzMj:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/analytics/internal/zzh;->zzMZ:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/analytics/internal/zzh;->zzNa:Z

    iput-wide p6, p0, Lcom/google/android/gms/analytics/internal/zzh;->zzNb:J

    if-eqz p8, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p8}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzh;->zzvS:Ljava/util/Map;

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzh;->zzvS:Ljava/util/Map;

    goto :goto_0
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzh;->zzMj:Ljava/lang/String;

    return-object v0
.end method

.method public zziM()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzh;->zzMY:J

    return-wide v0
.end method

.method public zziN()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzh;->zzMZ:Ljava/lang/String;

    return-object v0
.end method

.method public zziO()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzh;->zzNa:Z

    return v0
.end method

.method public zziP()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzh;->zzNb:J

    return-wide v0
.end method

.method public zzn()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzh;->zzvS:Ljava/util/Map;

    return-object v0
.end method

.method public zzn(J)V
    .locals 1

    iput-wide p1, p0, Lcom/google/android/gms/analytics/internal/zzh;->zzNb:J

    return-void
.end method
