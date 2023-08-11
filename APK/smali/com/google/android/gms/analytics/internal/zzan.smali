.class public Lcom/google/android/gms/analytics/internal/zzan;
.super Lcom/google/android/gms/analytics/internal/zzd;


# instance fields
.field protected zzLD:Z

.field protected zzNW:I

.field protected zzOZ:Ljava/lang/String;

.field protected zzPQ:Z

.field protected zzPR:Z

.field protected zzPS:Z

.field protected zzPa:Ljava/lang/String;

.field protected zzPc:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/analytics/internal/zzf;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/analytics/internal/zzd;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    return-void
.end method

.method private static zzbv(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "verbose"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v1, "info"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "warning"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string v1, "error"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getLogLevel()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzan;->zziE()V

    iget v0, p0, Lcom/google/android/gms/analytics/internal/zzan;->zzNW:I

    return v0
.end method

.method zza(Lcom/google/android/gms/analytics/internal/zzaa;)V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "Loading global XML config values"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzan;->zzba(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzaa;->zzko()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzaa;->zzkp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzan;->zzOZ:Ljava/lang/String;

    const-string v1, "XML config - app name"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzan;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzaa;->zzkq()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzaa;->zzkr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/analytics/internal/zzan;->zzPa:Ljava/lang/String;

    const-string v1, "XML config - app version"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzan;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzaa;->zzks()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzaa;->zzkt()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/internal/zzan;->zzbv(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    iput v0, p0, Lcom/google/android/gms/analytics/internal/zzan;->zzNW:I

    const-string v1, "XML config - log level"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzan;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzaa;->zzku()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzaa;->zzkv()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/analytics/internal/zzan;->zzPc:I

    iput-boolean v2, p0, Lcom/google/android/gms/analytics/internal/zzan;->zzPR:Z

    const-string v1, "XML config - dispatch period (sec)"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzan;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzaa;->zzkw()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/internal/zzaa;->zzkx()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzan;->zzLD:Z

    iput-boolean v2, p0, Lcom/google/android/gms/analytics/internal/zzan;->zzPS:Z

    const-string v1, "XML config - dry run"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/analytics/internal/zzan;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method protected zzhR()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzan;->zzlm()V

    return-void
.end method

.method public zzkp()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzan;->zziE()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzan;->zzOZ:Ljava/lang/String;

    return-object v0
.end method

.method public zzkr()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzan;->zziE()V

    iget-object v0, p0, Lcom/google/android/gms/analytics/internal/zzan;->zzPa:Ljava/lang/String;

    return-object v0
.end method

.method public zzks()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzan;->zziE()V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzan;->zzPQ:Z

    return v0
.end method

.method public zzku()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzan;->zziE()V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzan;->zzPR:Z

    return v0
.end method

.method public zzkw()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzan;->zziE()V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzan;->zzPS:Z

    return v0
.end method

.method public zzkx()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzan;->zziE()V

    iget-boolean v0, p0, Lcom/google/android/gms/analytics/internal/zzan;->zzLD:Z

    return v0
.end method

.method public zzll()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzan;->zziE()V

    iget v0, p0, Lcom/google/android/gms/analytics/internal/zzan;->zzPc:I

    return v0
.end method

.method protected zzlm()V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzan;->getContext()Landroid/content/Context;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x81

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "Couldn\'t get ApplicationInfo to load global config"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzan;->zzbd(Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v2, "PackageManager doesn\'t know about the app package"

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/analytics/internal/zzan;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "com.google.android.gms.analytics.globalConfigResource"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    new-instance v1, Lcom/google/android/gms/analytics/internal/zzz;

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/internal/zzan;->zziq()Lcom/google/android/gms/analytics/internal/zzf;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/gms/analytics/internal/zzz;-><init>(Lcom/google/android/gms/analytics/internal/zzf;)V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/internal/zzz;->zzad(I)Lcom/google/android/gms/analytics/internal/zzp;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/internal/zzaa;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/internal/zzan;->zza(Lcom/google/android/gms/analytics/internal/zzaa;)V

    goto :goto_1
.end method
