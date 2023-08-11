.class public final Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request$zza;
.super Ljava/lang/Object;


# instance fields
.field private zzQv:Landroid/accounts/Account;

.field private zzQw:Z

.field private zzQx:Z

.field private zzQy:Z

.field private zzQz:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzL(Z)Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request$zza;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request$zza;->zzQx:Z

    return-object p0
.end method

.method public zzby(Ljava/lang/String;)Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request$zza;->zzQz:Ljava/lang/String;

    return-object p0
.end method

.method public zzlr()Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;
    .locals 6

    new-instance v0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;

    iget-object v1, p0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request$zza;->zzQv:Landroid/accounts/Account;

    iget-boolean v2, p0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request$zza;->zzQw:Z

    iget-boolean v3, p0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request$zza;->zzQx:Z

    iget-boolean v4, p0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request$zza;->zzQy:Z

    iget-object v5, p0, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request$zza;->zzQz:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/appdatasearch/GetRecentContextCall$Request;-><init>(Landroid/accounts/Account;ZZZLjava/lang/String;)V

    return-object v0
.end method
