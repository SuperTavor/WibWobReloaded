.class public final Lcom/google/android/gms/internal/zzkp;
.super Ljava/lang/Object;


# instance fields
.field private final zzYi:Ljava/lang/String;

.field private final zzYj:I

.field private final zzYk:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkp;->zzYi:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/zzkp;->zzYj:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzkp;->zzYk:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "applicationName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "maxPlayers"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "version"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzkp;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getMaxPlayers()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzkp;->zzYj:I

    return v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkp;->zzYk:Ljava/lang/String;

    return-object v0
.end method

.method public final zzmH()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkp;->zzYi:Ljava/lang/String;

    return-object v0
.end method
