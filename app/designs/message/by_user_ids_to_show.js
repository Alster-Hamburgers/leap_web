function (doc) {
  if (doc.type === 'Message' && doc.user_ids_to_show && Array.isArray(doc.user_ids_to_show)) {
    doc.user_ids_to_show.forEach(function (userId) {
      emit(userId, 1);
    });
  }
}
