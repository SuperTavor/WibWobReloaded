.class public final Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;
.super Ljava/lang/Object;


# static fields
.field public static final MAX_CALL_TO_ACTION_TEXT_LENGTH:I = 0x14

.field public static final MAX_MESSAGE_LENGTH:I = 0x64

.field public static final MIN_CALL_TO_ACTION_TEXT_LENGTH:I = 0x2


# instance fields
.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.appinvite.ACTION_APP_INVITE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;->mIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.appinvite.TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public build()Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public setAccount(Landroid/accounts/Account;)Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "com.google"

    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.appinvite.ACCOUNT_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.appinvite.ACCOUNT_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAdditionalReferralParameters(Ljava/util/Map;)Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.appinvite.REFERRAL_PARAMETERS_URI"

    invoke-static {p1}, Lcom/google/android/gms/appinvite/AppInviteInvitation;->zzD(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.appinvite.REFERRAL_PARAMETERS_URI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAndroidMinimumVersionCode(I)Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.appinvite.appMinimumVersionCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p0
.end method

.method public setCallToActionText(Ljava/lang/CharSequence;)Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;
    .locals 6

    const/16 v5, 0x14

    const/4 v4, 0x2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt v0, v4, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v5, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Text must be between %d and %d chars in length."

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.appinvite.BUTTON_TEXT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    return-object p0
.end method

.method public setCustomImage(Landroid/net/Uri;)Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/net/Uri;->isAbsolute()Z

    move-result v0

    const-string v1, "Image uri is not an absolute uri. Did you forget to add a scheme to the Uri?"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v0, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v2, "Image uri must be a network url with scheme \"http\" or \"https\"."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object p0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDeepLink(Landroid/net/Uri;)Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.appinvite.DEEP_LINK_URL"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.appinvite.DEEP_LINK_URL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setGoogleAnalyticsTrackingId(Ljava/lang/String;)Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.appinvite.GOOGLE_ANALYTICS_TRACKING_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;
    .locals 5

    const/16 v4, 0x64

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message must be %d chars or less."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.appinvite.MESSAGE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    return-object p0
.end method

.method public setOtherPlatformsTargetApplication(ILjava/lang/String;)Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;
    .locals 2

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "targetPlatform must be either PROJECT_PLATFORM_IOS or PROJECT_PLATFORM_ANDROID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.appinvite.iosTargetApplication"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    return-object p0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/gms/appinvite/AppInviteInvitation$IntentBuilder;->mIntent:Landroid/content/Intent;

    const-string v1, "com.google.android.gms.appinvite.androidTargetApplication"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
