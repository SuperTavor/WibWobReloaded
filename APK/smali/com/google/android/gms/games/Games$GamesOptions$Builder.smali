.class public final Lcom/google/android/gms/games/Games$GamesOptions$Builder;
.super Ljava/lang/Object;


# instance fields
.field zzatS:Z

.field zzatT:Z

.field zzatU:I

.field zzatV:Z

.field zzatW:I

.field zzatX:Ljava/lang/String;

.field zzatY:Ljava/util/ArrayList;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzatS:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzatT:Z

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzatU:I

    iput-boolean v1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzatV:Z

    const/16 v0, 0x1110

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzatW:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzatX:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzatY:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/Games$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/games/Games$GamesOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/games/Games$GamesOptions;
    .locals 2

    new-instance v0, Lcom/google/android/gms/games/Games$GamesOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/games/Games$GamesOptions;-><init>(Lcom/google/android/gms/games/Games$GamesOptions$Builder;Lcom/google/android/gms/games/Games$1;)V

    return-object v0
.end method

.method public setSdkVariant(I)Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzatW:I

    return-object p0
.end method

.method public setShowConnectingPopup(Z)Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .locals 1

    iput-boolean p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzatT:Z

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzatU:I

    return-object p0
.end method

.method public setShowConnectingPopup(ZI)Lcom/google/android/gms/games/Games$GamesOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzatT:Z

    iput p2, p0, Lcom/google/android/gms/games/Games$GamesOptions$Builder;->zzatU:I

    return-object p0
.end method
