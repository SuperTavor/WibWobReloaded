.class public final Lcom/google/android/gms/drive/ExecutionOptions;
.super Ljava/lang/Object;


# static fields
.field public static final CONFLICT_STRATEGY_KEEP_REMOTE:I = 0x1

.field public static final CONFLICT_STRATEGY_OVERWRITE_REMOTE:I = 0x0

.field public static final MAX_TRACKING_TAG_STRING_LENGTH:I = 0x10000


# instance fields
.field private final zzaiX:Ljava/lang/String;

.field private final zzaiY:Z

.field private final zzaiZ:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzaiX:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzaiY:Z

    iput p3, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzaiZ:I

    return-void
.end method

.method public static zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/drive/ExecutionOptions;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/drive/Drive;->zzRk:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zzb;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/drive/internal/zzu;

    invoke-virtual {p1}, Lcom/google/android/gms/drive/ExecutionOptions;->zzqT()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/drive/internal/zzu;->zzrq()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Application must define an exported DriveEventService subclass in AndroidManifest.xml to be notified on completion"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static zzcC(Ljava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/high16 v1, 0x10000

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static zzck(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzcl(I)Z
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eq p1, p0, :cond_1

    check-cast p1, Lcom/google/android/gms/drive/ExecutionOptions;

    iget-object v2, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzaiX:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/drive/ExecutionOptions;->zzaiX:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzaiZ:I

    iget v3, p1, Lcom/google/android/gms/drive/ExecutionOptions;->zzaiZ:I

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzaiY:Z

    iget-boolean v3, p1, Lcom/google/android/gms/drive/ExecutionOptions;->zzaiY:Z

    if-eq v2, v3, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzaiX:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzaiZ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzaiY:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public zzqS()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzaiX:Ljava/lang/String;

    return-object v0
.end method

.method public zzqT()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzaiY:Z

    return v0
.end method

.method public zzqU()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/drive/ExecutionOptions;->zzaiZ:I

    return v0
.end method
