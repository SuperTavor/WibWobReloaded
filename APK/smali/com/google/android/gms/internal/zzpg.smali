.class public final Lcom/google/android/gms/internal/zzpg;
.super Lcom/google/android/gms/measurement/zze;


# instance fields
.field public zzaLx:Z

.field public zzaqZ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/zze;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpg;->zzaqZ:Ljava/lang/String;

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpg;->zzaqZ:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "description"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzpg;->zzaqZ:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fatal"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzpg;->zzaLx:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpg;->zzB(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzpg;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpg;->zzaqZ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpg;->zzaqZ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzpg;->setDescription(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzpg;->zzaLx:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzpg;->zzaLx:Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzpg;->zzak(Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/measurement/zze;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzpg;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzpg;->zza(Lcom/google/android/gms/internal/zzpg;)V

    return-void
.end method

.method public zzak(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzpg;->zzaLx:Z

    return-void
.end method

.method public zzyK()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzpg;->zzaLx:Z

    return v0
.end method
