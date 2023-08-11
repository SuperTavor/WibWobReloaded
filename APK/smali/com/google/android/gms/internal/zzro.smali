.class public Lcom/google/android/gms/internal/zzro;
.super Lcom/google/android/gms/common/internal/zzj;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTheme:I

.field private final zzRs:Ljava/lang/String;

.field private final zzbdL:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;II)V
    .locals 7

    const/4 v3, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzj;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzro;->mContext:Landroid/content/Context;

    iput p6, p0, Lcom/google/android/gms/internal/zzro;->zzbdL:I

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzf;->getAccountName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzro;->zzRs:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/internal/zzro;->mTheme:I

    return-void
.end method

.method private zzEG()Landroid/os/Bundle;
    .locals 4

    iget v0, p0, Lcom/google/android/gms/internal/zzro;->zzbdL:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzro;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzro;->zzRs:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/internal/zzro;->mTheme:I

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzro;->zza(ILjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static zza(ILjava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.google.android.gms.wallet.EXTRA_ENVIRONMENT"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "androidPackageName"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.google.android.gms.wallet.EXTRA_BUYER_ACCOUNT"

    new-instance v2, Landroid/accounts/Account;

    const-string v3, "com.google"

    invoke-direct {v2, p2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    const-string v1, "com.google.android.gms.wallet.EXTRA_THEME"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method protected synthetic zzW(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzro;->zzeb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzrj;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/wallet/FullWalletRequest;I)V
    .locals 4

    new-instance v1, Lcom/google/android/gms/internal/zzro$zzb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzro;->mContext:Landroid/content/Context;

    invoke-direct {v1, v0, p2}, Lcom/google/android/gms/internal/zzro$zzb;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzro;->zzEG()Landroid/os/Bundle;

    move-result-object v2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzro;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrj;

    invoke-interface {v0, p1, v2, v1}, Lcom/google/android/gms/internal/zzrj;->zza(Lcom/google/android/gms/wallet/FullWalletRequest;Landroid/os/Bundle;Lcom/google/android/gms/internal/zzrm;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "WalletClientImpl"

    const-string v3, "RemoteException getting full wallet"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x8

    const/4 v2, 0x0

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzro$zzb;->zza(ILcom/google/android/gms/wallet/FullWallet;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/wallet/MaskedWalletRequest;I)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzro;->zzEG()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzro$zzb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzro;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/internal/zzro$zzb;-><init>(Landroid/content/Context;I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzro;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrj;

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/zzrj;->zza(Lcom/google/android/gms/wallet/MaskedWalletRequest;Landroid/os/Bundle;Lcom/google/android/gms/internal/zzrm;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WalletClientImpl"

    const-string v3, "RemoteException getting masked wallet"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x8

    const/4 v1, 0x0

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/internal/zzro$zzb;->zza(ILcom/google/android/gms/wallet/MaskedWallet;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzro;->zzEG()Landroid/os/Bundle;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzro;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrj;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/zzrj;->zza(Lcom/google/android/gms/wallet/NotifyTransactionStatusRequest;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public zze(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzro;->zzEG()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzro$zzb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzro;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, p3}, Lcom/google/android/gms/internal/zzro$zzb;-><init>(Landroid/content/Context;I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzro;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrj;

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/zzrj;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/zzrm;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WalletClientImpl"

    const-string v3, "RemoteException changing masked wallet"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x8

    const/4 v1, 0x0

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/internal/zzro$zzb;->zza(ILcom/google/android/gms/wallet/MaskedWallet;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected zzeb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzrj;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzrj$zza;->zzdX(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzrj;

    move-result-object v0

    return-object v0
.end method

.method protected zzfK()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.wallet.service.BIND"

    return-object v0
.end method

.method protected zzfL()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.wallet.internal.IOwService"

    return-object v0
.end method

.method public zzkA(I)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzro;->zzEG()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzro$zzb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzro;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/zzro$zzb;-><init>(Landroid/content/Context;I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzro;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrj;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzrj;->zzb(Landroid/os/Bundle;Lcom/google/android/gms/internal/zzrm;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WalletClientImpl"

    const-string v3, "RemoteException during isNewUser"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x8

    const/4 v1, 0x0

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/internal/zzro$zzb;->zzb(IZLandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public zzkz(I)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzro;->zzEG()Landroid/os/Bundle;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzro$zzb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzro;->mContext:Landroid/content/Context;

    invoke-direct {v2, v0, p1}, Lcom/google/android/gms/internal/zzro$zzb;-><init>(Landroid/content/Context;I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzro;->zzpc()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrj;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzrj;->zza(Landroid/os/Bundle;Lcom/google/android/gms/internal/zzrm;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "WalletClientImpl"

    const-string v3, "RemoteException during checkForPreAuthorization"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v0, 0x8

    const/4 v1, 0x0

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v1, v3}, Lcom/google/android/gms/internal/zzro$zzb;->zza(IZLandroid/os/Bundle;)V

    goto :goto_0
.end method

.method public zzpe()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
