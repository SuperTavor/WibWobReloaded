.class public Lcom/google/android/gms/analytics/internal/zzu;
.super Lcom/google/android/gms/analytics/internal/zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzd;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    return-void
.end method


# virtual methods
.method protected zzhR()V
    .locals 0

    return-void
.end method

.method public zzki()Lcom/google/android/gms/internal/zzpd;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzu;->zziE()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzu;->zziw()Lcom/google/android/gms/measurement/zzg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/zzg;->zzys()Lcom/google/android/gms/internal/zzpd;

    move-result-object v0

    return-object v0
.end method

.method public zzkj()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzu;->zziE()V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzu;->zzki()Lcom/google/android/gms/internal/zzpd;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpd;->zzyB()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzpd;->zzyC()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
