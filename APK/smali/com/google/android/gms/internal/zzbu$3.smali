.class final Lcom/google/android/gms/internal/zzbu$3;
.super Lcom/google/android/gms/internal/zzbu;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzbu;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbu$1;)V

    return-void
.end method


# virtual methods
.method public synthetic zza(Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbu$3;->zzd(Landroid/content/SharedPreferences;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public zzd(Landroid/content/SharedPreferences;)Ljava/lang/Long;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbu$3;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbu$3;->zzde()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
