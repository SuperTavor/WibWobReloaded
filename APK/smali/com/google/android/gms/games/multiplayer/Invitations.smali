.class public interface abstract Lcom/google/android/gms/games/multiplayer/Invitations;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getInvitationInboxIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;
.end method

.method public abstract loadInvitations(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end method

.method public abstract loadInvitations(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;
.end method

.method public abstract registerInvitationListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;)V
.end method

.method public abstract unregisterInvitationListener(Lcom/google/android/gms/common/api/GoogleApiClient;)V
.end method
