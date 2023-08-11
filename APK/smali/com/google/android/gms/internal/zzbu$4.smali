.class final Lcom/google/android/gms/internal/zzbu$4;
.super Lcom/google/android/gms/internal/zzbu;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/zzbu;-><init>(Ljava/lang/String;Ljava/lang/Object;Lcom/google/android/gms/internal/zzbu$1;)V

    return-void
.end method


# virtual methods
.method public synthetic zza(Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbu$4;->zze(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zze(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbu$4;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbu$4;->zzde()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
