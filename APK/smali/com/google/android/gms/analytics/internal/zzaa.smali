.class public Lcom/google/android/gms/analytics/internal/zzaa;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/analytics/internal/zzp;


# instance fields
.field public zzOZ:Ljava/lang/String;

.field public zzPa:Ljava/lang/String;

.field public zzPb:Ljava/lang/String;

.field public zzPc:I

.field public zzPd:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/android/gms/analytics/internal/zzaa;->zzPc:I

    iput v0, p0, Lcom/google/android/gms/analytics/internal/zzaa;->zzPd:I

    return-void
.end method


# virtual methods
.method public zzko()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzaa;->zzOZ:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzkp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzaa;->zzOZ:Ljava/lang/String;

    return-object v0
.end method

.method public zzkq()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzaa;->zzPa:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzkr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzaa;->zzPa:Ljava/lang/String;

    return-object v0
.end method

.method public zzks()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzaa;->zzPb:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzkt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzaa;->zzPb:Ljava/lang/String;

    return-object v0
.end method

.method public zzku()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/analytics/internal/zzaa;->zzPc:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzkv()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/analytics/internal/zzaa;->zzPc:I

    return v0
.end method

.method public zzkw()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/analytics/internal/zzaa;->zzPd:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzkx()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/analytics/internal/zzaa;->zzPd:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
