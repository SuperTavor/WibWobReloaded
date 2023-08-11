.class public final Lcom/google/android/gms/games/Games$GamesOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# instance fields
.field public final zzatS:Z

.field public final zzatT:Z

.field public final zzatU:I

.field public final zzatV:Z

.field public final zzatW:I

.field public final zzatX:Ljava/lang/String;

.field public final zzatY:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzatS:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzatT:Z

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzatU:I

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzatV:Z

    const/16 v0, 0x1110

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzatW:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzatX:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzatY:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/Games$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/Games$GamesOptions;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/games/Games$GamesOptions$Builder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzatS:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzatS:Z

    iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzatT:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzatT:Z

    iget v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzatU:I

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzatU:I

    iget-boolean v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzatV:Z

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzatV:Z

    iget v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzatW:I

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzatW:I

    iget-object v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzatX:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzatX:Ljava/lang/String;

    iget-object v0, p1, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzatY:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzatY:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/Games$GamesOptions$Builder;Lcom/google/android/gms/games/Games$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/Games$GamesOptions;-><init>(Lcom/google/android/gms/games/Games$GamesOptions$Builder;)V

    return-void
.end method

.method public static builder()Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .locals 2

    new-instance v0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;-><init>(Lcom/google/android/gms/games/Games$1;)V

    return-object v0
.end method


# virtual methods
.method public zztD()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.google.android.gms.games.key.isHeadless"

    iget-boolean v2, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzatS:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.games.key.showConnectingPopup"

    iget-boolean v2, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzatT:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.games.key.connectingPopupGravity"

    iget v2, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzatU:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.google.android.gms.games.key.retryingSignIn"

    iget-boolean v2, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzatV:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "com.google.android.gms.games.key.sdkVariant"

    iget v2, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzatW:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "com.google.android.gms.games.key.forceResolveAccountKey"

    iget-object v2, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzatX:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.gms.games.key.proxyApis"

    iget-object v2, p0, Lcom/google/android/gms/games/Games$GamesOptions;->zzatY:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method
