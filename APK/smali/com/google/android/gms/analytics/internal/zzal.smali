.class public Lcom/google/android/gms/analytics/internal/zzal;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/internal/zzp;


# instance fields
.field public zzLq:Ljava/lang/String;

.field public zzPJ:D

.field public zzPK:I

.field public zzPL:I

.field public zzPM:I

.field public zzPN:I

.field public zzPO:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzal;->zzPJ:D

    iput v2, p0, Lcom/google/android/gms/analytics/internal/zzal;->zzPK:I

    iput v2, p0, Lcom/google/android/gms/analytics/internal/zzal;->zzPL:I

    iput v2, p0, Lcom/google/android/gms/analytics/internal/zzal;->zzPM:I

    iput v2, p0, Lcom/google/android/gms/analytics/internal/zzal;->zzPN:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzal;->zzPO:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getSessionTimeout()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/analytics/internal/zzal;->zzPK:I

    return v0
.end method

.method public getTrackingId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzal;->zzLq:Ljava/lang/String;

    return-object v0
.end method

.method public zzbo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzal;->zzPO:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public zzlc()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzal;->zzLq:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzld()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzal;->zzPJ:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzle()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/analytics/internal/zzal;->zzPJ:D

    return-wide v0
.end method

.method public zzlf()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/analytics/internal/zzal;->zzPK:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzlg()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/analytics/internal/zzal;->zzPL:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzlh()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/analytics/internal/zzal;->zzPL:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzli()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/analytics/internal/zzal;->zzPM:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzlj()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/analytics/internal/zzal;->zzPM:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzlk()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/analytics/internal/zzal;->zzPN:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzq(Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzal;->zzbo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
